{section show=$attribute.content.relation_list}
{section var=Relations loop=$attribute.content.relation_list}
{if $Relations.item.in_trash|not()}
    {content_view_gui view=embed content_object=fetch( content, object, hash( object_id, $Relations.item.contentobject_id ) )}<br />
{/if}
{/section}
{section-else}
{'There are no related objects.'|i18n( 'design/standard/content/datatype' )}
{/section}