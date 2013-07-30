global class Field
{
    global static Filter hasChanged( Schema.SObjectField field )
    {
        return new Filter( new FieldChangedPredicate( field ) );
    }

    global static Filter hasChanged( String field )
    {
        return new Filter( new FieldChangedPredicate( field ) );
    }

    global static Filter isNew( Schema.SObjectField field )
    {
        return new Filter( new FieldNewPredicate( field ) );
    }

    global static Filter isNew( String field )
    {
        return new Filter( new FieldNewPredicate( field ) );
    }

    global static Filter hasChildren( String field )
    {
        return new Filter( new HasChildrenPredicate( field ) );
    }

    global static Filter hasNoChildren( String field )
    {
        return hasChildren( field ).notx();
    }

    global static Filter isEqual( Schema.SObjectField field, Object value )
    {
        return new Filter( new FieldEqualsPredicate( field, value ) );
    }

    global static Filter isEqual( String field, Object value )
    {
        return new Filter( new FieldEqualsPredicate( field, value ) );
    }

    global static Filter notEqual( Schema.SObjectField field, Object value )
    {
        return isEqual( field, value ).notx();
    }

    global static Filter notEqual( String field, Object value )
    {
        return isEqual( field, value ).notx();
    }

    global static Filter isIn( Schema.SObjectField field, Set<Object> values )
    {
        return new Filter( new FieldInPredicate( field, values ) );
    }

    global static Filter isIn( String field, Set<Object> values )
    {
        return new Filter( new FieldInPredicate( field, values ) );
    }

    global static Filter notIn( Schema.SObjectField field, Set<Object> values )
    {
        return isIn( field, values ).notx();
    }

    global static Filter notIn( String field, Set<Object> values )
    {
        return isIn( field, values ).notx();
    }

    global static Filter isNull( Schema.SObjectField field )
    {
        return new Filter( new FieldNullPredicate( field ) );
    }

    global static Filter isNull( String field )
    {
        return new Filter( new FieldNullPredicate( field ) );
    }

    global static Filter notNull( Schema.SObjectField field )
    {
        return isNull( field ).notx();
    }

    global static Filter notNull( String field )
    {
        return isNull( field ).notx();
    }
}