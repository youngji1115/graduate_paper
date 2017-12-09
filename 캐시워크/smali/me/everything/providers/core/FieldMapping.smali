.class public interface abstract annotation Lme/everything/providers/core/FieldMapping;
.super Ljava/lang/Object;
.source "FieldMapping.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lme/everything/providers/core/FieldMapping;
        canUpdate = false
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Physical:Lme/everything/providers/core/FieldMapping$LogicalType;
        splitRegex = "\\s+"
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/core/FieldMapping$LogicalType;,
        Lme/everything/providers/core/FieldMapping$PhysicalType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract canUpdate()Z
.end method

.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract logicalType()Lme/everything/providers/core/FieldMapping$LogicalType;
.end method

.method public abstract physicalType()Lme/everything/providers/core/FieldMapping$PhysicalType;
.end method

.method public abstract splitRegex()Ljava/lang/String;
.end method
