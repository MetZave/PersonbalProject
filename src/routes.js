import react from 'react'

export default (
    <Switch>
        <Route exact path = '/' component={Auth} />
        <Route path='/dashboard' component={Dashboard} />
    </Switch>
)