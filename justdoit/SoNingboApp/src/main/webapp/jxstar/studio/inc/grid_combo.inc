	
		createjs: function(){
			//ȡѡ���¼������ֵ
			var params = 'funid='+ this.define.nodeid;
			
			//��������Ĳ���
			params += '&pagetype=editgrid&eventcode=createjs&projectpath=' + Jxstar.session['project_path'];

			//�����ļ����Զ����ظ��ļ�
			var hdcall = function() {
				Request.loadJS('/public/locale/combo-lang-zh.js');
			};

			//��������
			Request.postRequest(params, hdcall);
		}
	};