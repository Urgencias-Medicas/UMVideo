<?php

namespace App\Exports;

use App\Session;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class SessionExport implements FromCollection, WithHeadings, WithMapping, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Session::select('sessions.id as id', 'users.name as doctor','client_id as paciente', 'afiliado_id as afiliado', 'sessions.status as status', 'sessions.created_at as start_time', 'sessions.updated_at as end_time', 'rec_name as recording')
            ->leftJoin('users', 'sessions.user_id', '=', 'users.id')
            ->orderBy('sessions.id', 'desc')
            ->get();
    }

    public function map($data): array
    {
        $mapper = [];

        array_push($mapper, [
            'ID' => $data->id,
            'Doctor' => $data->doctor,
            'Paciente' => $data->paciente,
            'Afiliado' => $data->afiliado ? $data->afiliado : '-',
            'Estado' => ($data->status == 0) ? "Iniciada" : (($data->status == 1) ? "En proceso" : (($data->status == 2) ? "Finalizada" : (($data->status == 3) ? "Cliente No Ingresó" : "Error"))),
            'Fecha de Inicio' => date_format(date_create($data->start_time), "d/m/Y - h:i:s a"),
            'Fecha Fin' => ($data->status != 2) ? "-" : date_format(date_create($data->end_time), "d/m/Y - h:i:s a"),
            'Grabación' => ($data->status != 2) ? "-" : 'https://umvideo.nyc3.digitaloceanspaces.com/'.$data->recording
        ]);

        return $mapper;
    }

    public function headings(): array
    {
        return [
            'ID','Doctor','Paciente','Afiliado','Estado','Fecha de Inicio','Fecha Fin','Grabación'
        ];
    }
}
