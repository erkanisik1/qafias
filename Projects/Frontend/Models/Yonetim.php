<?php 	

	class Yonetim extends model
	{
		function login($post){
			$eposta = $post['eposta'];
			$pass = md5($post['pass']);
			return $this->db->where('mail',$eposta)->where('sifre',$pass)->get('kullanici')->row();
		}

		function musteri_list(){
			return $this->db->where('durum','1')->get('musteri')->results();
		}

		function yazi_list(){return DB::where('durum','1')->limit('10')->get('icerik')->result();}

		function yazi_duzenle($id){return DB::where('id',$id)->get('icerik')->row();}

		function yazipost($data){
			$tarih = Myfunc::tcevir($data['kayittarihi']);
			$baslikSeo = Myfunc::seo($data['isim']);

			DB::insert('icerik',[
				'baslik' => $data['isim'],
				'icerik' => $data['icerik'],
				'tarih' => $tarih,
				'kategori_id' => $data['kategori'],
				'baslik_seo' => $baslikSeo,		
			]);

			echo 'DB hatası: '.DB::error().'<br> Eklenen yazının idsi: '.DB::insertID();
		}

		function magazaDuzenle($id){
			return DB::get('magaza')->where('magaza_id',$id)->result();
		}

}