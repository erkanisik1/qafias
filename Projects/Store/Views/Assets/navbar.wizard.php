<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">{[ echo Session::select('magaza_adi'); ]}</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="/store/magaza_ayar"><i class="icon-user"></i> Mağaza Ayarları</a></li>

        <li class="divider"></li>
        <li><a href="/store/login/cikis"><i class="icon-key"></i> Çıkış</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Mesajlar</span> <span class="label label-important">0</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i>Mesaj Gönder</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> Gelen Kutusu</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> Giden Kutusu</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> Çöp Kutusu</a></li>
      </ul>
    </li>
  
    <li class=""><a title="" href="/store/login/cikis"><i class="icon icon-share-alt"></i> <span class="text">Çıkış</span></a></li>
  </ul>
</div>
