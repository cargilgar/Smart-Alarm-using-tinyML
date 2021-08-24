#include "tflite_test.h"

//void checkModelVersion(tflite::ErrorReporter* error_reporter, const tflite::Model* model) {
    /*if (model->version() != TFLITE_SCHEMA_VERSION) {
        TF_LITE_REPORT_ERROR(error_reporter,
            "Model provided is schema version %d not equal "
            "to supported version %d.",
            model->version(), TFLITE_SCHEMA_VERSION);
            return;
    }*/
//}

void testInputTensor(tflite::ErrorReporter* error_reporter, TfLiteTensor* input_tensor) {
    if ((input_tensor == nullptr))
        TF_LITE_REPORT_ERROR(error_reporter, "Input Tensor does not exist.\n");

    if ((input_tensor->dims->size != 2))
        TF_LITE_REPORT_ERROR(error_reporter, "Input Tensor size incorrect.\n");

    if ((input_tensor->dims->data[0] != 1))
        TF_LITE_REPORT_ERROR(error_reporter, "The first dimension of the Input "
        "Tensor is not %d.It is: %d.\n", 1, input_tensor->dims->data[0]);

    if ((input_tensor->dims->data[1] != kFeatureCount))
        TF_LITE_REPORT_ERROR(error_reporter, "The second dimension of the Input "
        "Tensor is not %d.It is: %d.\n", kFeatureCount, input_tensor->dims->data[1]);

    if ((input_tensor->type != kTfLiteInt8))
        TF_LITE_REPORT_ERROR(error_reporter, "Input Tensor type is not %d.\n",
        kTfLiteInt8);
}

void testOutputTensor(tflite::ErrorReporter* error_reporter, TfLiteTensor* output_tensor) {
    if ((output_tensor == nullptr))
        TF_LITE_REPORT_ERROR(error_reporter, "Output Tensor does not exist.\n");
        
    if ((output_tensor->dims->size != 2))
        TF_LITE_REPORT_ERROR(error_reporter, "Output Tensor size incorrect.\n");

    if ((output_tensor->dims->data[0] != 1))
        TF_LITE_REPORT_ERROR(error_reporter, "The first dimension of the Output "
        "Tensor is not %d.It is: %d.\n", 1, output_tensor->dims->data[0]);

    if ((output_tensor->dims->data[1] != kLabelCount))
        TF_LITE_REPORT_ERROR(error_reporter, "The second dimension of the Output "
        "Tensor is not %d.It is: %d.\n", kLabelCount, output_tensor->dims->data[1]);

    if ((output_tensor->type != kTfLiteInt8))
        TF_LITE_REPORT_ERROR(error_reporter, "Output Tensor type is not %d. \n",
        kTfLiteInt8);
}
