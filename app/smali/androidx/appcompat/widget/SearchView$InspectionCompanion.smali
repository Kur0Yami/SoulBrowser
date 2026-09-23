.class public final Landroidx/appcompat/widget/SearchView$InspectionCompanion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# virtual methods
.method public final mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    .line 1
    const-string v0, "imeOptions"

    .line 2
    .line 3
    const v1, 0x1010264

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->a:I

    .line 11
    .line 12
    const-string v0, "maxWidth"

    .line 13
    .line 14
    const v1, 0x101011f

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->b:I

    .line 22
    .line 23
    const-string v0, "iconifiedByDefault"

    .line 24
    .line 25
    sget v1, Landroidx/appcompat/R$attr;->iconifiedByDefault:I

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->c:I

    .line 32
    .line 33
    const-string v0, "queryHint"

    .line 34
    .line 35
    sget v1, Landroidx/appcompat/R$attr;->queryHint:I

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->d:I

    .line 42
    .line 43
    return-void
.end method

.method public final readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 2
    .line 3
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->a:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->b:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getMaxWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->c:I

    .line 22
    .line 23
    iget-boolean v1, p1, Landroidx/appcompat/widget/SearchView;->x:Z

    .line 24
    .line 25
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->d:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
