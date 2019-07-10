extends Control


func _ready():
	$HTTPRequest.request("https://godotengine.org")

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	$HTTPRequest/RichTextLabel.text = body.get_string_from_utf8()


func _on_Button_pressed():
	$HTTPRequest.request($HBoxContainer/LineEdit.text)


func _on_LineEdit_text_entered(new_text):
	_on_Button_pressed()
