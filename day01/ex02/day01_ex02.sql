SELECT pizza_name
from menu
UNION
select pizza_name
from menu
ORDER by pizza_name desc;