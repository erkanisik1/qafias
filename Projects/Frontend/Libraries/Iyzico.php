<?php


class Iyzico {

	protected $options;
	protected $request;
	protected $basketItems;

	function __construct(){
		$this->options = new \Iyzipay\Options();
        $this->options->setApiKey('sandbox-F35cvCCwJDGNLeB0y9IFhWF7UQeRbMSn');
        $this->options->setSecretKey('sandbox-3m7Pn0JeKqc9SV3vBLYIMa89SXQuhY3x');
        //$this->options->setApiKey('GznHJdaRe3lznwle70wk6mesYIHEjEJa');
        //$this->options->setSecretKey('3mUdzKRrw49s1QKIcVCNwlDaP44PU7zG');
        $this->options->setBaseUrl('https://sandbox-api.iyzipay.com');
        $this->basketItems = [];        
	}

	public function setForm(Array $params){
		$this->request = new \Iyzipay\Request\CreateCheckoutFormInitializeRequest();
		$this->request->setLocale(\Iyzipay\Model\Locale::TR);
		$this->request->setConversationId($params['conversationId']);
		$this->request->setPrice($params['price']);
		$this->request->setPaidPrice($params['paidPrice']);
		$this->request->setCurrency(\Iyzipay\Model\Currency::TL);
		$this->request->setBasketId($params['basketId']);
		$this->request->setPaymentGroup(\Iyzipay\Model\PaymentGroup::PRODUCT);
		$this->request->setCallbackUrl(URL::base('basket/odemeDurumu'));
		$this->request->setEnabledInstallments(array(2, 3, 6, 9));
		return $this;
	}

	public function setBuyer(Array $params){
		$buyer = new \Iyzipay\Model\Buyer();
		$buyer->setId($params['id']);
		$buyer->setName($params['name']);
		$buyer->setSurname($params['surname']);
		$buyer->setGsmNumber($params['phone']);
		$buyer->setEmail($params['email']);
		$buyer->setIdentityNumber($params['tcno']);
		$buyer->setRegistrationAddress($params['adres']);
		$buyer->setIp($params['ip']);
		$buyer->setCity($params['sehir']);
		$buyer->setCountry($params['ulke']);
		$this->request->setBuyer($buyer);
		return $this;
	}

	public function setKargo(Array $params){
		$shippingAddress = new \Iyzipay\Model\Address();
		$shippingAddress->setContactName($params['nameSurname']);
		$shippingAddress->setCity($params['sehir']);
		$shippingAddress->setCountry($params['ulke']);
		$shippingAddress->setAddress($params['adres']);
		$this->request->setShippingAddress($shippingAddress);
		return $this;
	}

	public function setFatura(Array $params){
		$billingAddress = new \Iyzipay\Model\Address();
		$billingAddress->setContactName($params['nameSurname']);
		$billingAddress->setCity($params['sehir']);
		$billingAddress->setCountry($params['ulke']);
		$billingAddress->setAddress($params['adres']);
		$this->request->setBillingAddress($billingAddress);
		return $this;
	}

	public function setSepet(Array $items){

		foreach ($items as $key => $value) {
			$basketItem = new \Iyzipay\Model\BasketItem();
			$basketItem->setId($value['id']);
			$basketItem->setName($value['urunAdi']);
			$basketItem->setCategory1($value['kategori']);
			$basketItem->setItemType(\Iyzipay\Model\BasketItemType::PHYSICAL);
			$basketItem->setPrice($value['fiyati']);
			array_push($this->basketItems, $basketItem);
		}

		$this->request->setBasketItems($this->basketItems);
		return $this;
	}


	function paymentForm(){
		$form = \Iyzipay\Model\CheckoutFormInitialize::create($this->request, $this->options);
		return $form;

	}


}


