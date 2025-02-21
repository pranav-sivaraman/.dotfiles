function sqs
    if command -q squeue
        squeue -u $USER
    else
    end
end
