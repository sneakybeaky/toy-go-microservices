package greet

import (
	"time"

	"github.com/go-kit/kit/log"
)

func loggingMiddleware(logger log.Logger) ServiceMiddleware {
	return func(next GreetingService) GreetingService {
		return logmw{logger, next}
	}
}

type logmw struct {
	logger log.Logger
	GreetingService
}

func (mw logmw) Greet(s string) (output string, err error) {
	defer func(begin time.Time) {
		_ = mw.logger.Log(
			"method", "greet",
			"input", s,
			"output", output,
			"err", err,
			"took", time.Since(begin),
		)
	}(time.Now())

	output, err = mw.GreetingService.Greet(s)
	return
}
