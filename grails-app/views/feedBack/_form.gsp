<div class="fieldcontain">

    <label for="firstName">

        FirstName

    </label>

        <g:textField name="firstName" value="${firstName}"></g:textField>


</div>

<div class="fieldcontain">

    <label for="comments">

        comments

    </label>

    <g:textArea name="comments" value="${comments}"></g:textArea>

</div>

<div class="fieldcontain">
    <label for="password">password</label>
    <g:textField name="password" value="${password}"></g:textField>
</div>


<div class="fieldcontain">
    <label for="notify">do  you want eamil nofiy?</label>
    <g:checkBox name="notify" value="${notify}"></g:checkBox>
</div>


<div class="fieldcontain">
    <label for="notify">gender</label>
    <g:radioGroup name="gender" labels="['Male', 'female']" values="['M', 'F']" value="${gender}" >
        ${it.label} ${it.radio}

    </g:radioGroup>
</div>

