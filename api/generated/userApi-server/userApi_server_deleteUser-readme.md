# Delete user

This node is for the server side logic of userApi_server_deleteUser that listens for incoming API request for the specific endpoint, validates the request parameters, execute the actions defined in the nodes, and generate the response messages to the client.

Below is the description defined in the API spec:

Delete user The API Path is DELETE /user/{username}

As a server side node, the input is HTTP request that the developer usually does need to handle. The node handler processes the request, formats the received messages and output the formatted data to next hops.

The output is the formatted data received from the HTTP/S request, which include all the parameters received from path, query parameters as well as request body. The actual parameters follows the format defined in the OpenAPI spec.

For each server side node, the flow logic should be ended with Action Reply node, which collects the process result from each step, formats the processed results (either successful or failed), and sends back to the client.

## Parameters Defined in the API Spec

### Settings

The connection settings can be specified via the profile name defined in the Applory Studio resource management page. For more detail, please refer to node OpenAPI Listener for the actual settings.

### Inputs

| Name | Type | Optional | Description |
|:--- | :--- | :--- | :--- |
| connection | string | true | The connection name defined in the profile.yaml file |

### Outputs

| Name | Type | Optional | Description |
|:--- | :--- | :--- | :--- | 
| pathParams.username | string | true | The name that needs to be deleted | 
| headers.x-transaction-id | string |  | An RFC4122 UID used as a transaction id. |

### Replys

The below defines the reponses to be sent back to client when the flow finish its processing.

Output: HTTP: default, ErrorResponse

| Name | Type | Optional | Description |
|:--- | :--- | :--- | :--- |
| status | number | true |  |
| data | application/json | true |  |
| headers | application/json | true |  |
| cookies | application/json | true |  |

Output: HTTP: 200, Confirmation

| Name | Type | Optional | Description |
|:--- | :--- | :--- | :--- |
| status | number | true |  |
| data | application/json | true |  |
| headers | application/json | true |  |
| cookies | application/json | true |  |

### Schema

The data field in the above output follows the schema definition defined in the API spec, please refer to the API spec to derive the parameters.

