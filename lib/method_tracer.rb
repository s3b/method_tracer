class MethodTracer
  def self.trace
    set_trace_func proc { |event, file, line, id, binding, classname|
       printf "%s:%-2d %10s %8s\n", file, line, id, classname if event == 'call'
    }
    yield
    set_trace_func nil
  end
end
