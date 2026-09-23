.class public final Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;
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

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# virtual methods
.method public final mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 3

    .line 1
    const-string v0, "autoSizeMaxTextSize"

    .line 2
    .line 3
    sget v1, Landroidx/appcompat/R$attr;->autoSizeMaxTextSize:I

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->a:I

    .line 10
    .line 11
    const-string v0, "autoSizeMinTextSize"

    .line 12
    .line 13
    sget v1, Landroidx/appcompat/R$attr;->autoSizeMinTextSize:I

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->b:I

    .line 20
    .line 21
    const-string v0, "autoSizeStepGranularity"

    .line 22
    .line 23
    sget v1, Landroidx/appcompat/R$attr;->autoSizeStepGranularity:I

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->c:I

    .line 30
    .line 31
    sget v0, Landroidx/appcompat/R$attr;->autoSizeTextType:I

    .line 32
    .line 33
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "autoSizeTextType"

    .line 39
    .line 40
    invoke-interface {p1, v2, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->d:I

    .line 45
    .line 46
    const-string v0, "backgroundTint"

    .line 47
    .line 48
    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    .line 49
    .line 50
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->e:I

    .line 55
    .line 56
    const-string v0, "backgroundTintMode"

    .line 57
    .line 58
    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    .line 59
    .line 60
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->f:I

    .line 65
    .line 66
    const-string v0, "drawableTint"

    .line 67
    .line 68
    sget v1, Landroidx/appcompat/R$attr;->drawableTint:I

    .line 69
    .line 70
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->g:I

    .line 75
    .line 76
    const-string v0, "drawableTintMode"

    .line 77
    .line 78
    sget v1, Landroidx/appcompat/R$attr;->drawableTintMode:I

    .line 79
    .line 80
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->h:I

    .line 85
    .line 86
    return-void
.end method

.method public final readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->a:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeMaxTextSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->b:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeMinTextSize()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->c:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeStepGranularity()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->d:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeTextType()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->e:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->f:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->g:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->h:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
