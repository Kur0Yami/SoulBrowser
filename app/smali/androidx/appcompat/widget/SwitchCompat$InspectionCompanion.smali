.class public final Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;
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

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# virtual methods
.method public final mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    .line 1
    const-string v0, "textOff"

    .line 2
    .line 3
    const v1, 0x1010125

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->a:I

    .line 11
    .line 12
    const-string v0, "textOn"

    .line 13
    .line 14
    const v1, 0x1010124

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->b:I

    .line 22
    .line 23
    const-string v0, "thumb"

    .line 24
    .line 25
    const v1, 0x1010142

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->c:I

    .line 33
    .line 34
    const-string v0, "showText"

    .line 35
    .line 36
    sget v1, Landroidx/appcompat/R$attr;->showText:I

    .line 37
    .line 38
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->d:I

    .line 43
    .line 44
    const-string v0, "splitTrack"

    .line 45
    .line 46
    sget v1, Landroidx/appcompat/R$attr;->splitTrack:I

    .line 47
    .line 48
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->e:I

    .line 53
    .line 54
    const-string v0, "switchMinWidth"

    .line 55
    .line 56
    sget v1, Landroidx/appcompat/R$attr;->switchMinWidth:I

    .line 57
    .line 58
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->f:I

    .line 63
    .line 64
    const-string v0, "switchPadding"

    .line 65
    .line 66
    sget v1, Landroidx/appcompat/R$attr;->switchPadding:I

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->g:I

    .line 73
    .line 74
    const-string v0, "thumbTextPadding"

    .line 75
    .line 76
    sget v1, Landroidx/appcompat/R$attr;->thumbTextPadding:I

    .line 77
    .line 78
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->h:I

    .line 83
    .line 84
    const-string v0, "thumbTint"

    .line 85
    .line 86
    sget v1, Landroidx/appcompat/R$attr;->thumbTint:I

    .line 87
    .line 88
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->i:I

    .line 93
    .line 94
    const-string v0, "thumbTintMode"

    .line 95
    .line 96
    sget v1, Landroidx/appcompat/R$attr;->thumbTintMode:I

    .line 97
    .line 98
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->j:I

    .line 103
    .line 104
    const-string v0, "track"

    .line 105
    .line 106
    sget v1, Landroidx/appcompat/R$attr;->track:I

    .line 107
    .line 108
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->k:I

    .line 113
    .line 114
    const-string v0, "trackTint"

    .line 115
    .line 116
    sget v1, Landroidx/appcompat/R$attr;->trackTint:I

    .line 117
    .line 118
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->l:I

    .line 123
    .line 124
    const-string v0, "trackTintMode"

    .line 125
    .line 126
    sget v1, Landroidx/appcompat/R$attr;->trackTintMode:I

    .line 127
    .line 128
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->m:I

    .line 133
    .line 134
    return-void
.end method

.method public final readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->a:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTextOff()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->b:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTextOn()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->c:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->d:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getShowText()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->e:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getSplitTrack()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->f:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->g:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchPadding()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->h:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTextPadding()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 73
    .line 74
    .line 75
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->i:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->j:I

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->k:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->l:I

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->m:I

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
