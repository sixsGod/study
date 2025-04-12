## CDO（Collaboration Data Objects）ライブラリ
1. 参照設定:
    - VBAエディタで「ツール」→「参照設定」を選択
    - 「Microsoft Outlook XX.X Object Library」にチェックを入れ、「OK」をクリック
2. Outlookオブジェクトの生成:
    - Outlook.Applicationオブジェクトを生成し、Outlookを操作するためのオブジェクトを作成
3. メール作成:
    - Outlook.MailItemオブジェクトを作成し、メールの宛先、件名、本文などを設定
4. メール送信:
    - MailItem.Sendメソッドでメールを送信

## サンプルコード
```VBA
Sub SendEmail()
    Dim olApp As Outlook.Application
    Dim olMail As Outlook.MailItem

    ' Outlookオブジェクトの生成
    Set olApp = New Outlook.Application

    ' メール作成
    Set olMail = olApp.CreateItem(olMailItem)

    With olMail
        .To = "宛先メールアドレス"
        .Subject = "メールの件名"
        .Body = "メールの本文"
        .Attachments.Add "添付ファイルのパス" ' 添付ファイルを指定する場合
        .Send ' メール送信
        ' .Display 'メールを表示
    End With

    ' オブジェクトの解放
    Set olMail = Nothing
    Set olApp = Nothing
End Sub
```
