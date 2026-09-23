.class Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:F

.field public final synthetic f:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->f:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->c(Landroid/content/Context;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->c:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->f:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget v2, Landroidx/mediarouter/R$layout;->mr_controller_volume_item:I

    .line 15
    .line 16
    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget v2, Landroidx/mediarouter/R$id;->volume_item_container:I

    .line 22
    .line 23
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->T:I

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    sget v2, Landroidx/mediarouter/R$id;->mr_volume_item_icon:I

    .line 35
    .line 36
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->S:I

    .line 45
    .line 46
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    .line 48
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 58
    .line 59
    if-eqz p1, :cond_8

    .line 60
    .line 61
    iget-boolean v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 62
    .line 63
    sget v3, Landroidx/mediarouter/R$id;->mr_name:I

    .line 64
    .line 65
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    sget v3, Landroidx/mediarouter/R$id;->mr_volume_slider:I

    .line 80
    .line 81
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 92
    .line 93
    invoke-static {p3}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->b(Landroid/content/Context;)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    const/16 v6, 0xff

    .line 102
    .line 103
    if-eq v5, v6, :cond_1

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-static {p3, v4}, Landroidx/core/graphics/ColorUtils;->i(II)I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    :cond_1
    invoke-virtual {v3, p3, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->a(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->W:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {p3, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    xor-int/lit8 p3, v2, 0x1

    .line 131
    .line 132
    invoke-virtual {v3, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->b(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    .line 137
    .line 138
    const/4 p3, 0x1

    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    iget-boolean v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->D:Z

    .line 142
    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_2

    .line 150
    .line 151
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->m()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_2

    .line 156
    .line 157
    move v4, v0

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget v4, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->o:I

    .line 160
    .line 161
    :goto_1
    if-ne v4, p3, :cond_3

    .line 162
    .line 163
    move v4, p3

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    move v4, v0

    .line 166
    :goto_2
    if-eqz v4, :cond_4

    .line 167
    .line 168
    iget v4, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 171
    .line 172
    .line 173
    iget v4, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->p:I

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 176
    .line 177
    .line 178
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Q:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    const/16 v4, 0x64

    .line 185
    .line 186
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_3
    sget v3, Landroidx/mediarouter/R$id;->mr_volume_item_icon:I

    .line 196
    .line 197
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Landroid/widget/ImageView;

    .line 202
    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_6
    const/high16 v2, 0x437f0000    # 255.0f

    .line 207
    .line 208
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->c:F

    .line 209
    .line 210
    mul-float/2addr v4, v2

    .line 211
    float-to-int v6, v4

    .line 212
    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 213
    .line 214
    .line 215
    sget v2, Landroidx/mediarouter/R$id;->volume_item_container:I

    .line 216
    .line 217
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Landroid/widget/LinearLayout;

    .line 222
    .line 223
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->O:Ljava/util/HashSet;

    .line 224
    .line 225
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_7

    .line 230
    .line 231
    const/4 v0, 0x4

    .line 232
    :cond_7
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 236
    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_8

    .line 244
    .line 245
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 246
    .line 247
    const/4 v0, 0x0

    .line 248
    invoke-direct {p1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 249
    .line 250
    .line 251
    const-wide/16 v0, 0x0

    .line 252
    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    .line 267
    .line 268
    :cond_8
    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
