using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EDM.Scrubber.Models.DTOs
{
    public class Response<T>
    {
        public int StatusCode { get; set; }
        public bool Success { get; set; }
        public string Message { get; set; }
        private T RefObject { get; set; }

        public Response(int statusCode, string message = null)
        {
            StatusCode = statusCode;
            Message = message ?? GetDegaultMessageForStatusCode(statusCode);
        }

        private string GetDegaultMessageForStatusCode(int statusCode)
        {
            return statusCode switch
            {
                400 => "A bad request,you have made",
                401 => "Authorized,you are not",
                404 => "Resource found,it was not",
                500 => "Server error",

                _ => null
            };
        }
    }

    public class ErrorResponse : Response<object>
    {
        public IList<string> Errors { get; set; }

        public ErrorResponse(int statusCode, IList<string> error, string message = null) : base(statusCode, message)
        {
            Errors = error;
        }
    }

    public class ValidationResponse : Response<object>
    {
        public IList<string> Errors { get; set; }

        public ValidationResponse(int statusCode, IList<string> error, string message = null) : base(statusCode, message)
        {
            Errors = error;
        }
    }