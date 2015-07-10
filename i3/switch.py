#!/usr/bin/python2.7
# Swap workspaces on two monitors
import i3

# collect active outputs
to_be_swapped = [output for output in i3.get_outputs() if output['active']]
workspace1 = to_be_swapped[0]['current_workspace']
workspace2 = to_be_swapped[1]['current_workspace']
#print to_be_swapped
for workspace in i3.get_workspaces():
    if workspace['focused']:
        activeworkspace = workspace
        break
# only swap when there are two active outputs


if len(to_be_swapped) == 2:
    for output in to_be_swapped:
        i3.workspace(output['current_workspace'])
        i3.command('move', 'workspace to output right')
        i3.workspace(output['current_workspace'])


i3.command("rename workspace "+workspace1+" to 0")
#i3.workspace(workspace2)
i3.command("rename workspace"+workspace2+" to "+workspace1)
#i3.workspace('0')
i3.command("rename workspace 0 to "+workspace2)

if activeworkspace['name'] == workspace1:
    i3.workspace(workspace2)
else: i3.workspace(workspace1)
