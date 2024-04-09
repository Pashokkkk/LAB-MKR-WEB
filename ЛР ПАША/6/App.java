package com.mycompany.mywebapp;

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.event.dom.client.KeyCodes;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.event.dom.client.KeyUpHandler;
import com.google.gwt.safehtml.shared.SafeHtmlBuilder;
import com.google.gwt.user.client.rpc.AsyncCallback;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.DialogBox;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.VerticalPanel;



import com.google.gwt.http.client.Request;
import com.google.gwt.http.client.RequestBuilder;
import com.google.gwt.http.client.RequestCallback;
import com.google.gwt.http.client.RequestException;
import com.google.gwt.http.client.Response;

import com.google.gwt.json.client.JSONArray;
import com.google.gwt.json.client.JSONParser;
import com.google.gwt.json.client.JSONObject;
import com.google.gwt.json.client.JSONValue;

import com.google.gwt.user.client.ui.Frame;

/**
 * Entry point classes define <code>onModuleLoad()</code>.
 */
public class App implements EntryPoint {
	 private static final String API_URL = "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5";

    public void doGet() {
        RequestBuilder builder = new RequestBuilder(RequestBuilder.GET, API_URL);

        try {
            Request response = builder.sendRequest(null, new RequestCallback() {
                public void onError(Request request, Throwable exception) {
                    // Обробка помилки
                    showError("Виникла помилка при отриманні курсів валют.");
                }

                public void onResponseReceived(Request request, Response response) {
                    if (response.getStatusCode() == 200) {
                        String json = response.getText();
                        JSONArray jsonArray = JSONParser.parseStrict(json).isArray();
                        if (jsonArray != null) {
                            VerticalPanel panel = new VerticalPanel();
                            for (int i = 0; i < jsonArray.size(); i++) {
                                JSONObject currencyObject = jsonArray.get(i).isObject();
                                String currencyName = currencyObject.get("ccy").isString().stringValue();
                                String buy = currencyObject.get("buy").isString().stringValue();
                                String sale = currencyObject.get("sale").isString().stringValue();
                                String messageText = "Купити  " + buy + " Продати " + sale + " Валюта " + currencyName;
                                HTML message = new HTML(messageText);
                                panel.add(message);
								
                            }
                            RootPanel.get("senddolarContainer").add(panel);
							RootPanel.get("senddolarContainer").addStyleName("flex flex-row items-center justify-center w-full px-4 py-4 mb-4 text-sm font-bold bg-green-300 leading-6 capitalize duration-100 transform rounded-sm shadow cursor-pointer focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:mb-0 sm:w-auto sm:mr-4 md:pl-8 md:pr-6 xl:pl-12 xl:pr-10   hover:shadow-lg hover:-translate-y-1 ");

							
                        } else {
                            showError("Не вдалося розпарсити JSON.");
                        }
                    } else {
                        showError("Отримана відповідь зі статусом: " + response.getStatusCode());
                    }
                }
            });
        } catch (RequestException e) {
            showError("Виняток під час виконання запиту: " + e.getMessage());
        }
    }
	

    private void showError(String message) {
        HTML error = new HTML(message);
        RootPanel.get().add(error);
    }

	/**
	 * The message displayed to the user when the server cannot be reached or
	 * returns an error.
	 */
	private static final String SERVER_ERROR = "An error occurred while "
			+ "attempting to contact the server. Please check your network "
			+ "connection and try again.";

	/**
	 * Create a remote service proxy to talk to the server-side Greeting service.
	 */
	private final GreetingServiceAsync greetingService = GWT
			.create(GreetingService.class);

	/**
	 * This is the entry point method.
	 */
	public void onModuleLoad() {

final Button senddolar = new Button("ОТРИМАТИ КУРС ДОЛАРА");
senddolar.addClickHandler(new ClickHandler() {
    @Override
    public void onClick(ClickEvent event) {
        // Викликати метод для отримання курсу долара
        doGet();
        // Вимкнути кнопку після кліку
        senddolar.setEnabled(false);
    }
});
RootPanel.get("senddolar").add(senddolar);


		final Button sendButton = new Button("Send to Server");
		final TextBox phone = new TextBox();
		phone.setText("Ваш номер телефону?");
		final TextBox name = new TextBox();
		name.setText("Як звати?");
		final TextBox email = new TextBox();
		email.setText("Електронна пошта? ");
			final TextBox message = new TextBox();
		message.setText("Коментар");

		final Label errorLabel = new Label();

		// We can add style names to widgets
		
		sendButton.addStyleName("sendButton relative inline-flex items-center justify-center px-8 py-4 text-lg font-bold text-white transition-all duration-200 bg-gray-900 font-pj rounded-xl focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-900");

		// Add the nameField and sendButton to the RootPanel
		// Use RootPanel.get() to get the entire body element
			// Add the nameField and sendButton to the RootPanel
		// Use RootPanel.get() to get the entire body element
		RootPanel.get("nameFieldContainerphone").add(phone);
		RootPanel.get("nameFieldContainername").add(name);
		RootPanel.get("nameFieldContaineremail").add(email);
		RootPanel.get("nameFieldContainermessage").add(message);
		RootPanel.get("sendButtonContainer").add(sendButton);
		RootPanel.get("errorLabelContainer").add(errorLabel);
RootPanel.get("senddolar").add(senddolar);

		// Focus the cursor on the name field when the app loads
		phone.setFocus(true);
		phone.selectAll();
			name.setFocus(true);
		name.selectAll();
			email.setFocus(true);
		email.selectAll();
			message.setFocus(true);
		message.selectAll();
RootPanel.get("FormPanel").addStyleName("  group");



phone.addStyleName("align-items: center flex flex-row items-center justify-center w-full px-4 py-4 mb-4 text-sm font-bold bg-green-300 leading-6 capitalize duration-100 transform rounded-sm shadow cursor-pointer focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:mb-0 sm:w-auto sm:mr-4 md:pl-8 md:pr-6 xl:pl-12 xl:pr-10   hover:shadow-lg hover:-translate-y-1");
name.addStyleName("flex flex-row items-center justify-center w-full px-4 py-4 mb-4 text-sm font-bold bg-green-300 leading-6 capitalize duration-100 transform rounded-sm shadow cursor-pointer focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:mb-0 sm:w-auto sm:mr-4 md:pl-8 md:pr-6 xl:pl-12 xl:pr-10   hover:shadow-lg hover:-translate-y-1");
email.addStyleName("flex flex-row items-center justify-center w-full px-4 py-4 mb-4 text-sm font-bold bg-green-300 leading-6 capitalize duration-100 transform rounded-sm shadow cursor-pointer focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:mb-0 sm:w-auto sm:mr-4 md:pl-8 md:pr-6 xl:pl-12 xl:pr-10   hover:shadow-lg hover:-translate-y-1");
message.addStyleName("flex flex-row items-center justify-center w-full px-4 py-4 mb-4 text-sm font-bold bg-green-300 leading-6 capitalize duration-100 transform rounded-sm shadow cursor-pointer focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:mb-0 sm:w-auto sm:mr-4 md:pl-8 md:pr-6 xl:pl-12 xl:pr-10   hover:shadow-lg hover:-translate-y-1  ");
RootPanel.get("senddolar").addStyleName("flex items-center justify-center w-full px-4 py-4 text-sm font-bold leading-6 capitalize duration-100 transform border-2 rounded-sm cursor-pointer border-green-300 focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:w-auto sm:px-6 border-text  hover:shadow-lg hover:-translate-y-1");
		// Create the popup dialog box
		final DialogBox dialogBox = new DialogBox();
		dialogBox.setText("Remote Procedure Call");
		dialogBox.setAnimationEnabled(true);
		final Button closeButton = new Button("Close");
		// We can set the id of a widget by accessing its Element
		closeButton.getElement().setId("closeButton");
		final Label textToServerphoneLabel = new Label();
		final HTML serverResponseLabel = new HTML();
		VerticalPanel dialogVPanel = new VerticalPanel();

		dialogVPanel.addStyleName("dialogVPanel");
		dialogVPanel.add(new HTML("<b>Sending name to the server:</b>"));
		dialogVPanel.add(textToServerphoneLabel);
		dialogVPanel.add(new HTML("<br><b>Server replies:</b>"));
		dialogVPanel.add(serverResponseLabel);
		dialogVPanel.setHorizontalAlignment(VerticalPanel.ALIGN_RIGHT);
		dialogVPanel.add(closeButton);
		dialogBox.setWidget(dialogVPanel);
dialogBox.addStyleName("flex flex-row items-center justify-center w-full px-4 py-4 mb-4 text-sm font-bold bg-green-300 leading-6 capitalize duration-100 transform rounded-sm shadow cursor-pointer focus:ring-4 focus:ring-green-500 focus:ring-opacity-50 focus:outline-none sm:mb-0 sm:w-auto sm:mr-4 md:pl-8 md:pr-6 xl:pl-12 xl:pr-10   hover:shadow-lg hover:-translate-y-1");
		// Add a handler to close the DialogBox
		closeButton.addClickHandler(new ClickHandler() {
			public void onClick(ClickEvent event) {
				dialogBox.hide();
				sendButton.setEnabled(true);
				sendButton.setFocus(true);
			}
		});


		// Create a handler for the sendButton and nameField
		class MyHandler implements ClickHandler, KeyUpHandler {
			/**
			 * Fired when the user clicks on the sendButton.
			 */
			public void onClick(ClickEvent event) {
				sendNameToServer();
			}

			/**
			 * Fired when the user types in the nameField.
			 */
			public void onKeyUp(KeyUpEvent event) {
				if (event.getNativeKeyCode() == KeyCodes.KEY_ENTER) {
					sendNameToServer();
				}
			}
 {
    
HTML html = new HTML("<nav class='sticky top-0 h-20 bg-[#243c5a] p-5 sm:px-24 xl:px-64'><div class='mx-auto flex justify-between items-center'><a href='#' class='uppercase text-white text-xl xl:text-3xl font-bold whitespace-no-wrap font-Montserrat leading-normal tracking-tighter'>Start Tailwind</a><button class='block md:hidden uppercase inline-flex items-center bg-green-500 px-3 py-2 rounded-lg text-white'>Menu <svg class='h-4 fill-current' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path d='M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z'/></svg></button><div class='hidden md:block'><a href='' class='px-4 uppercase text-white text-base font-bold whitespace-no-wrap font-Montserrat leading-normal tracking-tighter hover:text-green-500'>Portfolio</a><a href='' class='px-4 uppercase text-white text-base font-bold whitespace-no-wrap font-Montserrat leading-normal tracking-tighter hover:text-green-500'>About</a><a href='' class='px-4 uppercase text-white text-base font-bold whitespace-no-wrap font-Montserrat leading-normal tracking-tighter hover:text-green-500'>Contact</a></div></div></nav>", true);
   

    VerticalPanel panel = new VerticalPanel();
 
    panel.add(html);
    RootPanel.get("header").add(html);
	
	RootPanel.get("body").addStyleName("m-0 ");
	
  }
			/**
			 * Send the name from the nameField to the server and wait for a response.
			 */
			private void sendNameToServer() {
				// First, we validate the input.
				errorLabel.setText("");
				String textToServerphone = phone.getText();
				if (!FieldVerifier.isValidName(textToServerphone)) {
					errorLabel.setText("Пліз введіть телефон");
					return;
				}
				String textToServername = name.getText();
				if (!FieldVerifier.isValidName(textToServername)) {
					errorLabel.setText("Пліз введіть ваше імя");
					return;
				}
				String textToServeremail = email.getText();
				if (!FieldVerifier.isValidName(textToServeremail)) {
					errorLabel.setText("Пліз ви не ввели пошту");
					return;
				}
				String textToServermessage = message.getText();
				if (!FieldVerifier.isValidName(textToServermessage)) {
					errorLabel.setText("Пліз ви не ввели повідомлення");
					return;
				}

				// Then, we send the input to the server.
				sendButton.setEnabled(false);
				textToServerphoneLabel.setText(textToServername);
				
				
				
				serverResponseLabel.setText("");
				greetingService.greetServer(textToServername,
						new AsyncCallback<GreetingResponse>() {
							public void onFailure(Throwable caught) {
								// Show the RPC error message to the user
								dialogBox
										.setText("Дані що були отримані з форми");
								serverResponseLabel
										.addStyleName("serverResponseLabelError");
								serverResponseLabel.setHTML(SERVER_ERROR);
								dialogBox.center();
								closeButton.setFocus(true);
							}

							public void onSuccess(GreetingResponse result) {
								dialogBox.setText("Дані з форми");
								serverResponseLabel
										.removeStyleName("serverResponseLabelError");
								serverResponseLabel.setHTML(new SafeHtmlBuilder()
										.appendEscaped(result.getGreeting())
											.appendHtmlConstant("<br><br> ")
										.appendHtmlConstant(textToServerphone)
										.appendHtmlConstant("<br> ")
										.appendHtmlConstant(textToServername)
										.appendHtmlConstant("<br> ")
										.appendHtmlConstant(textToServeremail)
										.appendHtmlConstant("<br> ")
										.appendHtmlConstant(textToServermessage)
										
										.appendHtmlConstant(".<br>Отримано дані<br>")
										
										.toSafeHtml());
								dialogBox.center();
								closeButton.setFocus(true);
							}
						});
			}
			
		}

		// Add a handler to send the name to the server
		MyHandler handler = new MyHandler();
		sendButton.addClickHandler(handler);
		phone.addKeyUpHandler(handler);
		
	}
}
