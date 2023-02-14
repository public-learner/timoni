// The output.cue file is required by Timoni and should export
// a stream of Kubernetes objects under the output field.

package main

import (
	templates "podinfo.mod/templates"
)

// Generate the Kubernetes objects by passing the name, namespace
// and the config values to the templates instance.
instance: templates.#Instance & {
	config: values
	config: metadata: {
		name:      string @tag(name)
		namespace: string @tag(namespace)
	}
}

// Fill the output with the generated Kubernetes objects.
output: [ for obj in instance.objects {obj}]
