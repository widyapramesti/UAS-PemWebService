<?php

namespace App\Http\Controllers;
use App\ModelMhs;
use App\Http\TransformerMahasiswa;
use Illuminate\Http\Request;

class mahasiswasController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(){
		$data = ModelMhs::all();
		return response($data);
	}

	public function show($nim){
		$data = ModelMhs::where('nim',$nim)->get();
		return response ($data);
	}

	public function store(Request $request){
		$data = new ModelMhs();
		$data->nim = $request->input('nim');
		$data->nm_mhs = $request->input('nm_mhs');
		$data->fakultas = $request->input('fakultas');
		$data->jk = $request->input('jk');
		$data->prodi = $request->input('prodi');
		$data->agama = $request->input('agama');
		$data->notlp = $request->input('notlp');
		$data->alamat = $request->input('alamat');
		$data->save();

		return response('Berhasil Tambah Data');
	}
	
	public function update(Request $request, $nim){
		$data = ModelMhs::where('id',$nim)->first();
		$data->nim = $request->input('nim');
		$data->nm_mhs = $request->input('nm_mhs');
		$data->fakultas = $request->input('fakultas');
		$data->jk = $request->input('jk');
		$data->prodi = $request->input('prodi');
		$data->agama = $request->input('agama');
		$data->notlp = $request->input('notlp');
		$data->alamat = $request->input('alamat');
		$data->save();

		return response('Berhasil Merubah Data');
	}

	public function destroy($nim){
		$data = ModelMhs::where('id',$nim)->first();
		$data->delete();

		return response('Berhasil Menghapus Data');
	}
	
}