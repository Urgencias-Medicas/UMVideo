<?php

namespace App\Http\Controllers;

use App\Exports\SessionExport;
use App\Exports\AppointmentsExport;
use App\Session;
use App\Appointments;
use App\User;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use Maatwebsite\Excel\Facades\Excel;
use Carbon\Carbon;
use Storage;

class SessionController extends Controller
{

    public static function smartAPI($idUser, $medicalNum, $session_id = 0, $afiliadoID = 0) {
        if($session_id != 0){
            if($afiliadoID != 0){
                $data = Helper::cryptR(
                    array(
                        array(
                            "method" => "602",
                            "IdUser" => $idUser,
                            "IdAfiliado" => $afiliadoID,
                            "MedicalNum" => $medicalNum,
                            "Codigo" => $session_id
                        )
                    ), 1, 1);
            }else{
                $data = Helper::cryptR(
                    array(
                        array(
                            "method" => "602",
                            "IdUser" => $idUser,
                            "MedicalNum" => $medicalNum,
                            "Codigo" => $session_id
                        )
                    ), 1, 1);
            }

            /*SmartApiLog::create([
                "method" => "602",
                "idUser" => $idUser,
                "idAfiliado" => $afiliadoID,
                "nedicalNum" => $medicalNum,
                "codigo" => $session_id,
                "crypt" => $data
            ]);*/

            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => "http://umwsdl.smartla.net/wsdl_um.php",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => array('data' => $data),
            ));

            curl_exec($curl);
        }
    }

    public function index()
    {
        $sessions = Session::select('sessions.id as id', 'users.name as doctor','client_id as paciente', 'afiliado_id as afiliado', 'sessions.status as status', 'sessions.created_at as start_time', 'sessions.updated_at as end_time', 'rec_name as recording')
                            ->leftJoin('users', 'sessions.user_id', '=', 'users.id')
                            ->orderBy('sessions.id', 'desc')
                            ->get();

        return view('session', ['sessions' => $sessions]);
    }

    public function appointments(){
        $appointments = Appointments::orderBy('id', 'desc')->get();

        foreach($appointments as $appointment){
            $doctor_name = User::where('id', $appointment->doctor)->select('name')->get();
            $appointment->doctor = $doctor_name[0]->name;
        }

        return view('appointments', ['appointments' => $appointments]);
    }

    public function exportAppointments(){
        return Excel::download(new AppointmentsExport, 'citas.xlsx');
    }

    public function export() 
    {
        return Excel::download(new SessionExport, 'session.xlsx');
    }

    public static function newSession($data)
    {
        return Session::create($data)->id;
    }

    public static function getSession($idClient)
    {
        return Session::select('user_id', 'name', 'medicalNum')
                        ->leftJoin('users', 'sessions.user_id', '=', 'users.id')
                        ->where('client_id', $idClient)
                        ->orderBy('sessions.id', 'desc')
                        ->first();
    }

    public function setRecording(Request $request)
    {   

        Storage::put('test-input.txt', json_encode($request->input('data')));

        if ($request->input('data')) {

            $input = Helper::cryptR($request->input('data'), 0);

            $json = array(
                "idUser" => "31",
                "recFile" => "8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-49-31.mp4",
            );
            
            //return var_dump($input);

            $json_crypt = Helper::cryptR($json, 1);

            //return $json_crypt;

            //return var_dump(Helper::cryptR('ckJkaWpqVjNBWWJNRTI0UjNOYlNiUT09', 0));

            if (isset($input->idUser) && isset($input->recFile)) {

                Storage::put($input->idUser.'-test.txt', json_encode($input));

                $result = Session::where('user_id', $input->idUser)
                                    ->where('status', 1)
                                    ->orderBy('id', 'desc')
                                    ->where('rec_name', '')
                                    ->limit(1)
                                    ->update(['status' => 2, 'rec_name' => $input->recFile]);

                $session_data = Session::where('user_id', $input->idUser)->where('rec_name', $input->recFile)->first();

                $status_session = '';

                if($session_data->status == 0){
                    $status_session = 'Iniciada';
                }else if($session_data->status == 1){
                    $status_session = 'En Proceso';
                }else if($session_data->status == 2){
                    $status_session = 'Finalizada';
                }else if($session_data->status == 3){
                    $status_session = 'Cliente No Ingresó';
                }

                $data = Helper::cryptR(
                    array(
                        array(
                            "method" => "604",
                            "IdUser" => $session_data->client_id,
                            "Recording" => "https://umvideo.nyc3.digitaloceanspaces.com/".$session_data->rec_name,
                            "Codigo" => $session_data->id,
                            "FechaInicio" => $session_data->created_at,
                            "FechaFinal" => $session_data->updated_at,
                            "Status" => $status_session
                        )
                    ), 1, 1);
        
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "http://umwsdl.smartla.net/wsdl_um.php",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "POST",
                    CURLOPT_POSTFIELDS => array('data' => $data),
                ));
        
                curl_exec($curl);

                $content = array(
                    'status' => $result
                );

                $data = array('data' => Helper::cryptR($content, 1));

                return response()->json($content, 200);

            } elseif (isset($input->idUser)) {

                $result = 0;
                if ($request->input('status')) {

                    $result = Session::where('user_id', $input->idUser)
                                        ->where('status', 0)
                                        ->orderBy('id', 'desc')
                                        ->limit(1)
                                        ->update(['status' => 3]);

                } else {

                    $result = Session::where('user_id', $input->idUser)
                                        ->where('status', 0)
                                        ->orderBy('id', 'desc')
                                        ->limit(1)
                                        ->update(['status' => 1]);

                }

                $content = array(
                    'status' => $result
                );

                $data = array('data' => Helper::cryptR($content, 1));
                return response()->json($data, 200);

            } else {

                $content = array(
                    'status' => 0
                );

                $data = array('data' => Helper::cryptR($content, 1));
                return response()->json($data, 400);

            }

        } else {

            $content = array(
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));
            return response()->json($data, 400);
        }
    }

    public static function reviewSession(Request $request)
    {
        $inputData = Helper::cryptR($request->input('data'), 0);
        //$inputData = (object)$request->input('data');
        $idUser = $inputData->id;
        $review = $inputData->review;

        $result = Session::where('client_id', $idUser)
                    ->where('status', 2)
                    ->orderBy('id', 'desc')
                    ->limit(1)
                    ->update(['review' => $review]);
                    
        //$result = Session::where('client_id', $idUser)->where('status', 2)->orderBy('id', 'desc')->limit(1)->get();

        return response()->json($result, 200);
    }

    public function testApi($test){

        Storage::put('test.txt', $test);

        return 'test done';
    }

    public function cryptId($id){
        $json = array(
            $id
        );

        $json_crypt = Helper::cryptR($id, 1);



        return $json_crypt;

        //return var_dump(Helper::cryptR('ckJkaWpqVjNBWWJNRTI0UjNOYlNiUT09', 0));
    }

    public function decrypt($text){
        $decrypt = Helper::cryptR($text, 0);

        return var_dump($decrypt);
    }

    public function createAppointment(Request $request){
        $doctor = $request->doctor;
        $date = Carbon::createFromFormat('d/m/Y', $request->date)->format('Y-m-d');
        $time = Carbon::parse($request->time)->format('H:i:s');
        $user = $request->afiliado;

        $doctor = User::where('name', $doctor)->first();

        $roomName = $user.'-'.$doctor->id.'-'.$date.'-'.$time;

        $response = Http::withOptions([
            'verify' => false
        ])->post('https://media.smartla.net/smart-media-gw/service/video-call/create', [
            'meetingName' => $roomName,
            'mmetingType' => 'Cita MicoopeApp',
        ]);

        $response = $response->json();

        //return $response['meeting'];

        $appointment = new Appointments();
        $appointment->doctor = $doctor->id;
        $appointment->user = $user;
        $appointment->date = $date;
        $appointment->time = $time;
        $appointment->apellidos = $request->userApellidos;
        $appointment->nombres = $request->userNombres;
        $appointment->telefono = $request->userTelefono;
        $appointment->tipo = $request->userTipo;
        $appointment->idInterno = $request->userId;
        $appointment->producto = $request->producto;
        $appointment->status = 'active';
        $appointment->videourl = $response['meeting']['meetingUrl'];
        $appointment->roomName = $response['meeting']['roomName'];
        $appointment->save();

        SessionController::smartAPI($user, $doctor->medicalNum, $appointment->id);

        return response()->json($appointment, 200);

    }

    public function getAvailableDoctors(Request $request){
        $date = Carbon::createFromFormat('d/m/Y', $request->date)->format('Y-m-d');
        $time = Carbon::parse($request->time)->format('H:i:s');
        $timeplusmin = Carbon::parse($request->time)->addMinutes(1)->format('H:i:s');
        //$oneHourAfterTime = Carbon::parse($time)->addHour()->format('H:i:s');

        /*$appointments = Appointments::get();
        foreach($appointments as $appointment){
            $appointment->date = Carbon::parse($appointment->date)->format('d/m/Y');
            $appointment->time = Carbon::parse($appointment->time)->format('H:i');
        }*/



        $busyDoctors = Appointments::where('status', 'active')->where('date', $date)->whereTime('time', '=', $time)->select('doctor')->get()->toArray();

        $workingDoctors = User::where('status', 1)->whereTime('inicioHorario', '<=', $timeplusmin)->whereTime('finHorario', '>=', $timeplusmin)->select('id')->get()->toArray();

        $noCDoctors = User::where('status', 1)->whereTime('inicioHorarioNoC', '<=', $timeplusmin)->whereTime('finHorarioNoC', '>=', $timeplusmin)->select('id')->get()->toArray();

        $lunchingDoctors = User::where('status', 1)->whereTime('inicioHorarioA', '<=', $timeplusmin)->whereTime('finHorarioA', '>=', $timeplusmin)->select('id')->get()->toArray();

        $availableDoctors = User::where('status', 1)->whereIn('id', $workingDoctors)->whereNotIn('id', $busyDoctors)->whereNotIn('id', $noCDoctors)->whereNotIn('id', $lunchingDoctors)->select('name as key')->get();
        
        return response()->json($availableDoctors, 200);
        //return $appointments;
    }

    public function getPendingAppointments(Request $request){
        $appointments = Appointments::where('user', $request->user)->where('status', 'active')->orderBy('date', 'desc')->orderBy('time', 'desc')->get();

        foreach($appointments as $appointment){
            $doctorName = User::where('id', $appointment->doctor)->select('name')->first();
            $appointment->doctor = $doctorName->name;
        }

        return response()->json($appointments, 200);
    }

    public function getPastAppointments(Request $request){
        $appointments = Appointments::where('user', $request->user)->where('status', 'finished')->orderBy('date', 'desc')->orderBy('time', 'desc')->get();
        foreach($appointments as $appointment){
            $doctorName = User::where('id', $appointment->doctor)->select('name')->first();
            $appointment->doctor = $doctorName->name;
        }

        return response()->json($appointments, 200);
    }

    public function viewAppointment($id){
        $appointment = Appointments::where('id', $id)->first();
        $appointment->date = Carbon::parse($appointment->date)->format('d/m/Y');
        $appointment->time = Carbon::parse($appointment->time)->format('H:i');

        return view('appointments.view', ['Appointment' => $appointment]);
    }

    public function endAppointment($id){
        $appointment = Appointments::where('id', $id)->first();
        $appointment->status = 'finished';
        $appointment->save();

        return redirect('/');
    }
}
