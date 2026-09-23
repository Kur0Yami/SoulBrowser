.class public final Landroidx/appcompat/widget/Toolbar$InspectionCompanion;
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

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I


# virtual methods
.method public final mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    .line 1
    const-string v0, "collapseContentDescription"

    .line 2
    .line 3
    sget v1, Landroidx/appcompat/R$attr;->collapseContentDescription:I

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->a:I

    .line 10
    .line 11
    const-string v0, "collapseIcon"

    .line 12
    .line 13
    sget v1, Landroidx/appcompat/R$attr;->collapseIcon:I

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->b:I

    .line 20
    .line 21
    const-string v0, "contentInsetEnd"

    .line 22
    .line 23
    sget v1, Landroidx/appcompat/R$attr;->contentInsetEnd:I

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->c:I

    .line 30
    .line 31
    const-string v0, "contentInsetEndWithActions"

    .line 32
    .line 33
    sget v1, Landroidx/appcompat/R$attr;->contentInsetEndWithActions:I

    .line 34
    .line 35
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->d:I

    .line 40
    .line 41
    const-string v0, "contentInsetLeft"

    .line 42
    .line 43
    sget v1, Landroidx/appcompat/R$attr;->contentInsetLeft:I

    .line 44
    .line 45
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->e:I

    .line 50
    .line 51
    const-string v0, "contentInsetRight"

    .line 52
    .line 53
    sget v1, Landroidx/appcompat/R$attr;->contentInsetRight:I

    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->f:I

    .line 60
    .line 61
    const-string v0, "contentInsetStart"

    .line 62
    .line 63
    sget v1, Landroidx/appcompat/R$attr;->contentInsetStart:I

    .line 64
    .line 65
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->g:I

    .line 70
    .line 71
    const-string v0, "contentInsetStartWithNavigation"

    .line 72
    .line 73
    sget v1, Landroidx/appcompat/R$attr;->contentInsetStartWithNavigation:I

    .line 74
    .line 75
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->h:I

    .line 80
    .line 81
    const-string v0, "logo"

    .line 82
    .line 83
    sget v1, Landroidx/appcompat/R$attr;->logo:I

    .line 84
    .line 85
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->i:I

    .line 90
    .line 91
    const-string v0, "logoDescription"

    .line 92
    .line 93
    sget v1, Landroidx/appcompat/R$attr;->logoDescription:I

    .line 94
    .line 95
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->j:I

    .line 100
    .line 101
    const-string v0, "menu"

    .line 102
    .line 103
    sget v1, Landroidx/appcompat/R$attr;->menu:I

    .line 104
    .line 105
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->k:I

    .line 110
    .line 111
    const-string v0, "navigationContentDescription"

    .line 112
    .line 113
    sget v1, Landroidx/appcompat/R$attr;->navigationContentDescription:I

    .line 114
    .line 115
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->l:I

    .line 120
    .line 121
    const-string v0, "navigationIcon"

    .line 122
    .line 123
    sget v1, Landroidx/appcompat/R$attr;->navigationIcon:I

    .line 124
    .line 125
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->m:I

    .line 130
    .line 131
    const-string v0, "popupTheme"

    .line 132
    .line 133
    sget v1, Landroidx/appcompat/R$attr;->popupTheme:I

    .line 134
    .line 135
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->n:I

    .line 140
    .line 141
    const-string v0, "subtitle"

    .line 142
    .line 143
    sget v1, Landroidx/appcompat/R$attr;->subtitle:I

    .line 144
    .line 145
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->o:I

    .line 150
    .line 151
    const-string v0, "title"

    .line 152
    .line 153
    sget v1, Landroidx/appcompat/R$attr;->title:I

    .line 154
    .line 155
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->p:I

    .line 160
    .line 161
    const-string v0, "titleMarginBottom"

    .line 162
    .line 163
    sget v1, Landroidx/appcompat/R$attr;->titleMarginBottom:I

    .line 164
    .line 165
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->q:I

    .line 170
    .line 171
    const-string v0, "titleMarginEnd"

    .line 172
    .line 173
    sget v1, Landroidx/appcompat/R$attr;->titleMarginEnd:I

    .line 174
    .line 175
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->r:I

    .line 180
    .line 181
    const-string v0, "titleMarginStart"

    .line 182
    .line 183
    sget v1, Landroidx/appcompat/R$attr;->titleMarginStart:I

    .line 184
    .line 185
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->s:I

    .line 190
    .line 191
    const-string v0, "titleMarginTop"

    .line 192
    .line 193
    sget v1, Landroidx/appcompat/R$attr;->titleMarginTop:I

    .line 194
    .line 195
    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->t:I

    .line 200
    .line 201
    return-void
.end method

.method public final readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->a:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseContentDescription()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->b:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseIcon()Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->c:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->d:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEndWithActions()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->e:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetLeft()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->f:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetRight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->g:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->h:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStartWithNavigation()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 73
    .line 74
    .line 75
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->i:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->j:I

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogoDescription()Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->k:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->l:I

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->m:I

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->n:I

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getPopupTheme()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 127
    .line 128
    .line 129
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->o:I

    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->p:I

    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->q:I

    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 154
    .line 155
    .line 156
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->r:I

    .line 157
    .line 158
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 163
    .line 164
    .line 165
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->s:I

    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 172
    .line 173
    .line 174
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->t:I

    .line 175
    .line 176
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
