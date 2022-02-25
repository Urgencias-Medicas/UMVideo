<?php

namespace App\Exports;

use App\Appointments;
use App\User;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class AppointmentsExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {

        $appointments = Appointments::orderBy('id', 'desc')->get();

        foreach($appointments as $appointment){
            $doctor_name = User::where('id', $appointment->doctor)->select('name')->get();
            $appointment->doctor = $doctor_name[0]->name;
        }

        return $appointments;
    }

    public function map($data): array
    {
        $mapper = [];

        array_push($mapper, [
            'ID' => $data->id,
            'Titular' => $data->nombres.' '.$data->apellidos,
            'Afiliado' => $data->nombres.' '.$data->apellidos,
            'Telefono' => $data->telefono,
            'No. Afiliación' => $data->user,
            'Id Interno' => $data->idInterno,
            'Doctor' => $data->doctor,
            'Fecha Inicio' => date_format(date_create($data->date), "d/m/Y").' - '.date_format(date_create($data->time), "h:i"),
            'Efectiva' => $data->status == 'finished' ? 'Si' : 'No',
            'Producto' => $data->producto,
        ]);

        return $mapper;
    }

    public function headings(): array
    {
        return [
            'ID', 'Titular', 'Afiliado', 'Telefono', 'No. Afiliación', 'Id Interno', 'Doctor', 'Fecha Inicio', 'Efectiva', 'Producto'
        ];
    }
}
