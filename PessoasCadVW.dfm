object frmClientesCadVW: TfrmClientesCadVW
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Clientes'
  ClientHeight = 523
  ClientWidth = 1005
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnlRodape: TPanel
    Left = 0
    Top = 455
    Width = 1005
    Height = 68
    Align = alBottom
    TabOrder = 0
    object pnlBotoes: TPanel
      Left = 378
      Top = 4
      Width = 357
      Height = 61
      BorderStyle = bsSingle
      TabOrder = 0
      object btnIncluir: TSpeedButton
        Left = 1
        Top = 1
        Width = 87
        Height = 55
        Align = alLeft
        Caption = '&Incluir'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
          FF00F7F7F700F7F7F700EFF7EF00F7F7F700FFFFFF00FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00EFEFEF00CED6CE00A5B5
          9C00849C840073947300738C6B007B9C7B0094A59400BDC6BD00E7E7E700F7F7
          F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00F7F7F700BDC6BD00738C6B00396B39002973
          21002973210021732100217321002173210029732100316B29005A7B52009CAD
          9C00E7E7E700FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00F7F7F700DEDEDE00949C8C00316B290021732100298429002984
          290029842900398C390042944200318431002984290029842900297B2100216B
          18006B846300C6C6C600EFEFEF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FFFFFF00E7E7E70094A58C00397B31002984290031842900318C2900318C
          290073AD6B00CEDEC600DEEFDE00A5C69C0042943900318C2900318C29002984
          2900297B29006B8C6300CED6CE00F7F7F700FFFFFF00FF00FF00FF00FF00FF00
          FF00F7F7F700B5C6B5003984390029842900318C3100318C2900399429004A9C
          4200CEE7C600FFFFFF00FF00FF00F7FFF7007BB57300318C2900318C2900318C
          2900298C3100297B290084A57B00F7F7F700FFFFFF00FF00FF00FF00FF00FF00
          FF00EFF7EF004A8C4200318C31003194310039943100429C3100429C39005AAD
          5A00DEEFDE00FF00FF00FF00FF00FF00FF0094C69400429C3900429C39003994
          310039943100318C310029842900BDCEBD00FFFFFF00FF00FF00FF00FF00FFFF
          FF00A5C6A500298C2900319431003994390042A539004AA542004AAD4A0063B5
          6300DEEFDE00FF00FF00FF00FF00FF00FF0094CE9C0042AD4A004AA54A0042A5
          4200399C390039943100319431006BA56300EFF7EF00FF00FF00FF00FF00EFF7
          EF0063A55A0031943900399C390042A542004AAD4A004AAD520052B55A0063BD
          6B00DEEFDE00FF00FF00FF00FF00FF00FF009CD69C004AB5520052B552004AAD
          520042A54200429C39003994390042944200BDDEBD00FF00FF00FF00FF00C6DE
          C6004AA54A00399C420042A542004AAD520052B55A0052B5630052BD6B006BC6
          7B00DEF7E700FF00FF00FF00FF00FF00FF009CD6AD004AB5630052B5630052B5
          5A004AAD520042A54200399C4200399C39008CBD8C00F7FFF700FFFFFF00ADCE
          AD00429C4A0042A54A007BBD7B00B5DEB500BDE7C600BDE7C600BDE7C600C6EF
          CE00F7FFF700FF00FF00FF00FF00FF00FF00DEF7DE00BDE7C600BDE7C600BDE7
          C600B5DEBD009CCE9C0052AD5A00399C420073B57300EFF7EF00FFFFFF009CCE
          9C0042A54A006BB57300DEEFE700FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00F7FFFF00A5D6AD0039A542006BB56B00E7F7E700FFFFFF0094CE
          9C0042AD520094CE9C00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00DEF7E70042AD520063B56B00E7F7E700FFFFFF00A5D6
          A5004AB55A0084C68C00EFF7EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FFFFFF00BDE7C6004AB55A0073BD7B00E7F7EF00FFFFFF00B5DE
          BD005ABD6B006BC68400A5DEB500D6F7E700DEF7EF00E7FFEF00E7FFF700EFFF
          F700FFFFFF00FF00FF00FF00FF00FF00FF00F7FFF700E7FFF700E7FFEF00DEF7
          EF00DEF7EF00C6EFCE007BCE940052BD6B0084CE9400F7FFF700FF00FF00DEEF
          DE006BC67B0073CE8C0073D69C007BDEA50084E7B5008CEFC60094EFCE00A5F7
          DE00EFFFF700FF00FF00FF00FF00FF00FF00C6F7E70094EFCE0094EFC6008CE7
          BD007BDEAD007BD69C0073CE940063C67B00ADDEB500FFFFFF00FF00FF00F7FF
          F7008CCE9C0073D6940084DEAD008CE7BD009CEFC600A5EFD600ADF7DE00BDF7
          E700EFFFFF00FF00FF00FF00FF00FF00FF00D6FFEF00ADF7DE00A5F7D6009CEF
          CE0094E7BD008CDEAD007BD69C006BC68400D6EFDE00FF00FF00FF00FF00FF00
          FF00CEEFD6006BCE8C008CDEB50094E7C600A5EFCE00ADF7DE00B5F7E700C6FF
          EF00F7FFFF00FF00FF00FF00FF00FF00FF00D6FFF700B5F7E700ADF7DE00A5EF
          D6009CE7C60094DEB5007BDEA50094D6AD00FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF00A5E7BD008CE7B500A5EFC600ADEFD600B5F7DE00BDF7E700CEFF
          EF00F7FFFF00FF00FF00FF00FF00FF00FF00DEFFF700BDFFE700B5F7E700ADF7
          D600A5EFCE0094E7BD0084D6A500EFFFF700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00EFFFEF00A5E7BD009CEFC600B5F7D600BDF7DE00C6FFE700CEFF
          EF00F7FFFF00FF00FF00FF00FF00FFFFFF00DEFFF700C6FFEF00BDF7E700B5F7
          DE00A5EFCE0094E7B500CEEFDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FFFFFF00E7FFEF00ADEFCE00ADF7D600BDF7E700C6F7EF00CEFF
          EF00E7FFF700FFFFFF00FFFFFF00EFFFFF00D6FFF700C6FFEF00BDF7E700B5FF
          DE009CE7C600CEF7DE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FFFFFF00C6F7DE00B5F7DE00C6FFE700CEFF
          EF00CEFFF700D6FFF700D6FFF700CEFFF700CEFFEF00C6FFEF00B5F7DE00B5F7
          D600EFFFF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00E7FFF700D6F7E700C6FF
          E700C6FFEF00C6FFEF00C6FFEF00C6FFEF00C6FFEF00CEF7E700DEFFEF00FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7FF
          FF00F7FFFF00EFFFF700EFFFF700EFFFF700F7FFFF00FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnIncluirClick
      end
      object btnSair: TSpeedButton
        Left = 262
        Top = 1
        Width = 87
        Height = 55
        Align = alLeft
        Caption = '&Sair'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00F7EFEF00E7DED600E7DED600E7DED600E7DE
          D600E7DED600E7DED600E7DED600E7DED600E7DED600E7E7DE00EFEFEF00FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00DECEB500D6B58C00D6B58400D6B58400D6B5
          8400D6B58400D6B58400D6B58400D6B58400D6B58400CEAD8400C6B59400CEC6
          BD00EFEFEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00DECEAD00D6AD7B00D6AD7B00D6AD7B00D6AD
          7B00CEAD7300CEAD7300CEAD7300CEA57300CEA57300D6A57300D6AD7300D6AD
          7300C6AD8C00D6D6CE00F7F7F700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00DECEB500D6AD7B00D6AD7B00D6AD7B00D6AD
          7B00CEAD7300CEAD7300CEAD7300CEA57300CEA57300CEA57300CEA57300CEA5
          7300CEAD7300C6AD8400D6CEC600FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00DECEB500D6B58400D6AD7B00D6AD7B00D6AD
          7B00D6AD7B00D6AD7B00D6AD7B00CEAD7300CEAD7300CEAD7300CEA57300CEA5
          7300CEA57300CEA57300C6A58400E7E7E700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00E7CEB500DEB58400D6B58400D6AD8400D6AD
          7B00D6AD7B00D6AD7B00D6AD7B00D6AD7B00D6AD7B00CEAD7300CEAD7300CEA5
          7300CEA57300CEA57300D6AD7300CEBDA500F7F7F700FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00E7CEBD00DEBD8C00D6B58C00DEB58C00D6B5
          8C00D6B58C00D6B58C00D6B58400D6B58400D6AD8400D6AD7B00CEAD7300CEAD
          7300CEAD7300CEA57300CEAD7300CEAD8400E7E7DE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00F7F7EF00EFE7DE00EFE7DE00EFE7DE00EFE7
          DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFDED600DEBD9400D6AD7B00CEAD
          7B00CEAD7300CEAD7300CEAD7300CEAD7B00DED6C600FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FFF7F700EFE7E700FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F7EFE700D6BD8C00D6AD
          7B00D6AD7B00CEAD7300CEAD7300D6AD7B00D6C6B500FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00F7F7EF00DECEBD00CEC6AD00FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F7F7EF00DEC69C00D6AD
          7B00D6AD7B00D6AD7B00CEAD7B00CEAD7B00D6C6B500FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00F7F7F700DECEB500DEBD9400CEBDAD00FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7E7D600D6B58C00D6AD
          7B00D6AD7B00D6AD7B00D6AD7B00D6AD7B00D6CEBD00FFFFFF00FF00FF00FF00
          FF00FF00FF00FFFFFF00EFEFE700DEC6AD00DEBD9400DEBD9400CEB59C00D6CE
          BD00D6CEC600D6CEBD00D6CEBD00D6CEBD00D6C6B500D6B58C00D6B58400D6AD
          8400D6AD7B00D6AD7B00D6AD7B00D6B58C00E7DED600FFFFFF00FF00FF00FF00
          FF00FF00FF00EFE7E700DECEB500DEC69C00DEBD9400DEBD9400D6B59400D6B5
          9400D6B58C00D6B58C00D6B58C00D6B58C00D6B58400D6B58400D6AD8400D6AD
          8400D6AD8400D6AD7B00D6AD8400D6BD9400EFEFEF00FF00FF00FF00FF00FF00
          FF00EFEFE700DEC6AD00E7C69C00DEBD9C00DEBD9400DEBD9400DEBD9400DEBD
          9400DEBD9400DEB58C00DEB58C00D6B58C00D6B58C00D6B58400D6B58400D6B5
          8400D6B58400D6AD8400D6B58400DECEBD00FFFFFF00FF00FF00FF00FF00F7EF
          E700DEC6AD00E7C6A500DEBD9C00DEBD9C00DEBD9C00DEBD9C00DEBD9400DEBD
          9400DEBD9400DEBD9400D6B58C00D6B58C00D6B58C00D6B58C00D6B58C00D6B5
          8400D6B58400DEB58C00D6BDA500F7F7F700FF00FF00FF00FF00FF00FF00FFF7
          F700EFDECE00E7C6A500DEC6A500DEC69C00DEC69C00DEBD9C00DEBD9C00DEBD
          9C00DEBD9400DEBD9400DEBD9400D6B59400D6B58C00D6B58C00D6B58C00D6B5
          8C00DEBD8C00DEC6A500EFEFE700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FFFFF700E7D6C600E7C6AD00DEC6A500DEC6A500DEC69C00DEBD9C00DEC6
          9C00DEBD9C00DEBD9C00DEBD9400DEBD9400DEBD9400DEBD9400E7BD9400DEBD
          9400DECEBD00EFEFE700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FFFFFF00EFE7D600E7CEB500E7C6A500DEC6A500DEC6A500E7CE
          B500E7CEAD00E7CEAD00E7CEAD00E7CEAD00DEC6AD00DEC6AD00E7D6C600EFEF
          E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00EFE7DE00E7CEB500E7CEAD00D6C6B500F7F7
          EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00FFF7F700FFFFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7E7DE00EFD6BD00D6C6BD00FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F7EFEF00E7DED600FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnSairClick
      end
      object btnGravar: TSpeedButton
        Left = 88
        Top = 1
        Width = 87
        Height = 55
        Align = alLeft
        Caption = '&Gravar'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDEDE00E7E7
          E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00B5B5B5005A5A5A00525252005A5A5A005A5A5A0052525200525252006363
          63005A5A5A006363630063636300636363005A5A5A005A5A5A005A5A5A005A5A
          5A0052525200525252006B6B6B00E7E7E700FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C001010100008080800101010001010100021212100393939003939
          3900424242002121210018181800181818001818180018181800101010001010
          1000101010000808080021212100D6D6D600FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C001010100008080800101010001818180031313100313131008C8C
          8C00EFEFEF00B5B5B50042424200212121001818180018181800181818001010
          1000101010000808080021212100D6D6D600FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C0021212100393939006363630029292900393939004A4A4A00DEDE
          DE00F7F7F700F7F7F700D6D6D6008C8C8C003939390042424200848484009C9C
          9C006B6B6B002121210029292900D6D6D600FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C00313131005A5A5A0063636300393939003939390094949400F7F7
          F700F7F7F700F7F7F700F7F7F700EFEFEF00CECECE006B6B6B0063636300BDBD
          BD00B5B5B5003939390039393900D6D6D600FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C00393939003131310031313100393939006B6B6B00E7E7E700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700B5B5B5005A5A
          5A004A4A4A002121210031313100D6D6D600FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C00313131003131310042424200424A4A00B5B5B500F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7
          E700949494004242420018181800CECECE00FF00FF00FF00FF00FF00FF00FF00
          FF008C8C8C0031313100424242004242420073737300EFD6BD00F7EFDE00F7F7
          FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700D6D6D600848484006B6B6B00D6D6D600FFFFFF00FF00FF00FF00
          FF0084848400424242004242420042424200C6BDAD00F7C68400F7B56B00F7D6
          AD00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700FFFFFF00BDBDBD004242420084848400FF00FF00FFFF
          FF008C8C8C0042424200424242004242420073737300BDAD9C00EFC69C00F7B5
          7300F7BD8400F7D6BD00F7EFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F70094949400393939004A4A4A00FF00FF00E7E7
          E70073737300424242004242420042424200424242004A4A5200847B7B00DEC6
          AD00FFC68C00F7B56B00F7C69400F7E7D600F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700DEDEDE00424242003131310084848400FFFFFF00A5A5
          A50042424200424242003131310031313100393939004A4A4A00424242004A4A
          520094949400DEC6AD00F7BD7B00F7B56B00F7C69400F7EFDE00F7F7F700F7F7
          F700F7F7F700EFEFEF007B7B7B00393939005A5A5A00DEDEDE00DEDEDE006363
          63003131310039393900313131002929290073737300B5B5B500848484004A4A
          4A003942420063636300B5A59C00EFC69C00F7BD7B00F7BD7B00F7D6B500F7EF
          E700F7F7F700BDBDBD004A4A4A0042424200A5A5A500FFFFFF009C9C9C004A4A
          4A0042424200313131002929290039393900C6C6C600D6D6D600CECECE00ADAD
          AD006B6B6B00424242004A4A4A007B737300CEBDAD00FFC69400F7B56B00F7BD
          8400E7DECE00737373003939390063636300E7E7E700FF00FF00CECECE007B7B
          7B004A4A4A00313131003131310094949400EFEFEF00E7E7E700DEDEDE00D6D6
          D600CECECE00ADADAD005A5A5A0042424200424242008C8C8C00D6BDAD00F7C6
          9400A59C94003939390039393900C6C6C600FF00FF00FF00FF00FFFFFF00EFEF
          EF0084848400313131005A5A5A00CECECE00E7E7E700E7E7E700E7E7E700DEDE
          DE00DEDEDE00ADADAD00737373007B7B7B005A5A5A00424242005A5A5A00948C
          8C00525252003939390042424200EFEFEF00FF00FF00FF00FF00FF00FF00FF00
          FF0094949400313131005A5A5A00B5B5B500E7E7E700E7E7E700E7E7E700E7E7
          E700D6D6D60063636300393939009C9C9C009C9C9C0042424200424242004242
          420042424200424242006B6B6B00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00A5A5A5004242420039393900313131007B7B7B00CECECE00E7E7E700E7E7
          E70094949400313131006B6B6B00C6C6C6007373730042424200424242004242
          42004A4A4A0073737300E7E7E700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00B5B5B500525252005A5A5A00636363006B6B6B00BDBDBD00EFEFEF00DEDE
          DE008484840039393900BDBDBD00ADADAD004A4A4A0042424200424242004242
          420063636300CECECE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00EFEFEF00D6D6D600DEDEDE00E7E7E700E7E7E700F7F7F700FFFFFF00F7F7
          F700DEDEDE00BDBDBD00D6D6D6006B6B6B004242420042424200424242004242
          4200ADADAD00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FFFFFF00F7F7F7009C9C9C0042424200424242004A4A4A005A5A5A007B7B
          7B00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00CECECE0084848400737373009C9C9C00C6C6C600EFEF
          EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00EFEFEF00E7E7E700FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnGravarClick
      end
      object btnCancelar: TSpeedButton
        Left = 175
        Top = 1
        Width = 87
        Height = 55
        Align = alLeft
        Caption = '&Cancelar'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000006B0000006B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          6B0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000006B000018EF000008CE0000006B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000000
          DE000000E70000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006B000018EF000018EF000018EF000000CE0000006B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000000D6000008
          EF000008EF000000EF0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006B000010DE000021EF000018EF000018EF000008CE000000
          6B00FF00FF00FF00FF00FF00FF00FF00FF0000006B000000D6000008EF000000
          EF000008EF000000CE0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000006B000010D6000018EF000018EF000018EF000008
          CE0000006B00FF00FF00FF00FF0000006B000000E7000008EF000008EF000008
          EF000000CE0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000006B000010D6000021EF000018EF000018
          EF000010D60000006B0000006B000000E7000000EF000000EF000008EF000000
          CE0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000010D6000021EF000018
          EF000018EF000010DE000000EF000008EF000000EF000008EF000000DE000000
          6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000018D6000021
          EF000018EF000010EF000008EF000008EF000008EF000000DE0000006B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000018
          DE000018EF000010EF000018EF000010EF000008D60000006B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000021
          E7000021EF000018EF000018EF000018EF000010DE0000006B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000029E7000029
          EF000021EF000021EF000021EF000018EF000021EF000010D60000006B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000029DE000831EF000029
          EF000029EF000018DE000018D6000029EF000021EF000021EF000010D6000000
          6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000006B000829E7000831EF000831EF000839
          EF000021D60000006B0000006B000018D6000029EF000021EF000021EF000010
          D60000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000006B000831E7001039EF001039EF000839EF000021
          CE0000006B00FF00FF00FF00FF0000006B000010CE000029EF000021EF000021
          EF000018D60000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006B001039E7001042EF001039EF001039EF000021CE000000
          6B00FF00FF00FF00FF00FF00FF00FF00FF0000006B000010CE000029EF000029
          EF000021EF000018DE0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006B001842EF001842EF001842EF000021CE0000006B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000010CE000029
          EF000029EF000018DE0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000006B001842E7000829CE0000006B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006B000018
          CE000021D60000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000006B0000006B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          6B0000006B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnCancelarClick
      end
    end
  end
  object pnlTela: TPanel
    Left = 0
    Top = 0
    Width = 1005
    Height = 455
    Align = alClient
    TabOrder = 1
    object lblNome: TLabel
      Left = 6
      Top = 43
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome : '
    end
    object lblIdentidade: TLabel
      Left = 6
      Top = 83
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Identidade :'
    end
    object lblTipoPessoa: TLabel
      Left = 271
      Top = 83
      Width = 38
      Height = 16
      Alignment = taRightJustify
      Caption = 'Tipo : '
    end
    object lblCPFCNPJ: TLabel
      Left = 468
      Top = 83
      Width = 68
      Height = 16
      Alignment = taRightJustify
      Caption = 'CPF/CNPJ : '
    end
    object lblTelefone: TLabel
      Left = 6
      Top = 123
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Telefone : '
    end
    object lblEmail: TLabel
      Left = 265
      Top = 123
      Width = 44
      Height = 16
      Alignment = taRightJustify
      Caption = 'Email : '
    end
    object edtNome: TEdit
      Left = 112
      Top = 40
      Width = 713
      Height = 24
      MaxLength = 120
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object edtIdentidade: TEdit
      Left = 112
      Top = 80
      Width = 121
      Height = 24
      MaxLength = 20
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object cmbTipo: TComboBox
      Left = 315
      Top = 80
      Width = 108
      Height = 24
      Style = csDropDownList
      TabOrder = 2
      OnKeyPress = FormKeyPress
      Items.Strings = (
        'F'#237'sica'
        'Juridica')
    end
    object edtCPFCNPJ: TMaskEdit
      Left = 538
      Top = 80
      Width = 189
      Height = 24
      TabOrder = 3
      Text = ''
      OnEnter = edtCPFCNPJEnter
      OnExit = edtCPFCNPJExit
      OnKeyPress = FormKeyPress
    end
    object edtTelefone: TMaskEdit
      Left = 112
      Top = 120
      Width = 119
      Height = 24
      EditMask = '!\(999\)00000-0000;0; '
      MaxLength = 15
      TabOrder = 4
      Text = ''
      OnKeyPress = FormKeyPress
    end
    object edtEmail: TEdit
      Left = 315
      Top = 120
      Width = 510
      Height = 24
      MaxLength = 150
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object gbxEndereco: TGroupBox
      Left = 112
      Top = 183
      Width = 713
      Height = 250
      Caption = 'Endere'#231'o'
      TabOrder = 6
      object lblCep: TLabel
        Left = 7
        Top = 18
        Width = 100
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CEP : '
      end
      object lblLogradouro: TLabel
        Left = 7
        Top = 58
        Width = 100
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Logradouro : '
      end
      object lblNumero: TLabel
        Left = 506
        Top = 58
        Width = 27
        Height = 22
        Alignment = taRightJustify
        Caption = 'N'#186' : '
      end
      object lblComplemento: TLabel
        Left = 7
        Top = 98
        Width = 100
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Complemento : '
      end
      object lblBairro: TLabel
        Left = 7
        Top = 138
        Width = 100
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bairro : '
      end
      object lblCidade: TLabel
        Left = 7
        Top = 178
        Width = 100
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade : '
      end
      object lblEstado: TLabel
        Left = 7
        Top = 218
        Width = 100
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estado : '
      end
      object lblPais: TLabel
        Left = 370
        Top = 218
        Width = 36
        Height = 22
        Alignment = taRightJustify
        Caption = 'Pa'#237's : '
      end
      object edtCEP: TMaskEdit
        Left = 109
        Top = 15
        Width = 116
        Height = 24
        EditMask = '00.000-000;0; '
        MaxLength = 10
        TabOrder = 0
        Text = ''
        OnExit = edtCEPExit
        OnKeyPress = FormKeyPress
      end
      object edtLogradouro: TEdit
        Left = 109
        Top = 55
        Width = 388
        Height = 24
        MaxLength = 120
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object edtNumero: TEdit
        Left = 539
        Top = 55
        Width = 121
        Height = 24
        MaxLength = 60
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object edtComplemento: TEdit
        Left = 109
        Top = 95
        Width = 388
        Height = 24
        MaxLength = 120
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object edtBairro: TEdit
        Left = 109
        Top = 135
        Width = 433
        Height = 24
        MaxLength = 120
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object edtCidade: TEdit
        Left = 109
        Top = 175
        Width = 433
        Height = 24
        MaxLength = 120
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object cmbEstado: TComboBox
        Left = 109
        Top = 215
        Width = 224
        Height = 24
        Style = csDropDownList
        TabOrder = 6
        OnKeyPress = FormKeyPress
        Items.Strings = (
          'Acre'
          'Alagoas'
          'Amazonas'
          'Amap'#225
          'Bahia'
          'Cear'#225
          'Distrito Federal'
          'Espir'#237'to Santo'
          'Goi'#225's'
          'Maranh'#227'o'
          'Minas Gerais'
          'Mato Grosso do Sul'
          'Mato Grosso'
          'Par'#225
          'Paran'#225
          'Para'#237'ba'
          'Pernambuco'
          'Piau'#237
          'Rio de Janeiro'
          'Rio Grande do Norte'
          'Rio Grande do Sul'
          'Rond'#244'nia'
          'Roraima'
          'Santa Catarina'
          'Sergipe'
          'S'#227'o Paulo'
          'Tocantins'
          'EXTERIOR')
      end
      object edtPais: TEdit
        Left = 412
        Top = 215
        Width = 248
        Height = 24
        MaxLength = 100
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
    end
  end
end