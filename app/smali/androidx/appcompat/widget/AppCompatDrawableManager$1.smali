.class Landroidx/appcompat/widget/AppCompatDrawableManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    .line 5
    .line 6
    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    .line 7
    .line 8
    sget v2, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    .line 9
    .line 10
    filled-new-array {v0, v1, v2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a:[I

    .line 15
    .line 16
    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    .line 17
    .line 18
    sget v2, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    .line 19
    .line 20
    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    .line 21
    .line 22
    sget v4, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    .line 23
    .line 24
    sget v5, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    .line 25
    .line 26
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    .line 27
    .line 28
    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    .line 29
    .line 30
    filled-new-array/range {v1 .. v7}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->b:[I

    .line 35
    .line 36
    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    .line 37
    .line 38
    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    .line 39
    .line 40
    sget v3, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 41
    .line 42
    sget v4, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    .line 43
    .line 44
    sget v5, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl:I

    .line 45
    .line 46
    sget v6, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl:I

    .line 47
    .line 48
    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl:I

    .line 49
    .line 50
    filled-new-array/range {v1 .. v7}, [I

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->c:[I

    .line 55
    .line 56
    sget v0, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    .line 57
    .line 58
    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 59
    .line 60
    sget v2, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    .line 61
    .line 62
    filled-new-array {v0, v1, v2}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->d:[I

    .line 67
    .line 68
    sget v0, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    .line 69
    .line 70
    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    .line 71
    .line 72
    filled-new-array {v0, v1}, [I

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->e:[I

    .line 77
    .line 78
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    .line 79
    .line 80
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    .line 81
    .line 82
    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material_anim:I

    .line 83
    .line 84
    sget v3, Landroidx/appcompat/R$drawable;->abc_btn_radio_material_anim:I

    .line 85
    .line 86
    filled-new-array {v0, v1, v2, v3}, [I

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->f:[I

    .line 91
    .line 92
    return-void
.end method

.method public static a(I[I)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    if-ne v3, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget v1, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/appcompat/widget/ThemeUtils;->b(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->i(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->i(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x4

    .line 22
    new-array v2, v2, [[I

    .line 23
    .line 24
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->b:[I

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->d:[I

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->c:[I

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    aput-object v3, v2, v4

    .line 38
    .line 39
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->f:[I

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    aput-object v3, v2, v4

    .line 43
    .line 44
    filled-new-array {p0, v1, v0, p1}, [I

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method public static d(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sget v0, Landroidx/appcompat/R$drawable;->abc_star_black_48dp:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Landroidx/appcompat/R$drawable;->abc_star_half_black_48dp:I

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    .line 38
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Landroid/graphics/Canvas;

    .line 57
    .line 58
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    .line 74
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .line 76
    .line 77
    move-object p1, v2

    .line 78
    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 81
    .line 82
    .line 83
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v2, p2, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-ne v2, p2, :cond_1

    .line 98
    .line 99
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    .line 104
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Landroid/graphics/Canvas;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    .line 121
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 125
    .line 126
    const/4 v2, 0x3

    .line 127
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    aput-object v0, v2, v1

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    aput-object p0, v2, v0

    .line 133
    .line 134
    const/4 p0, 0x2

    .line 135
    aput-object p1, v2, p0

    .line 136
    .line 137
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    const/high16 p1, 0x1020000

    .line 141
    .line 142
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 143
    .line 144
    .line 145
    const p1, 0x102000f

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 149
    .line 150
    .line 151
    const p1, 0x102000d

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 155
    .line 156
    .line 157
    return-object p2
.end method

.method public static f(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Landroidx/appcompat/widget/AppCompatDrawableManager;->b:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final c(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    .line 1
    sget v0, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    .line 6
    .line 7
    sget v0, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x2

    .line 20
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object v0, p2, v1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object p1, p2, v0

    .line 27
    .line 28
    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    return-object p3

    .line 32
    :cond_0
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    .line 33
    .line 34
    if-ne p3, v0, :cond_1

    .line 35
    .line 36
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_big:I

    .line 37
    .line 38
    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->d(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    .line 44
    .line 45
    if-ne p3, v0, :cond_2

    .line 46
    .line 47
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_medium:I

    .line 48
    .line 49
    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->d(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    .line 55
    .line 56
    if-ne p3, v0, :cond_3

    .line 57
    .line 58
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_small:I

    .line 59
    .line 60
    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->d(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method public final e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    sget v0, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    sget p2, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    .line 13
    .line 14
    if-ne p2, v0, :cond_1

    .line 15
    .line 16
    sget p2, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-ne p2, v0, :cond_3

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    new-array v0, p2, [[I

    .line 30
    .line 31
    new-array p2, p2, [I

    .line 32
    .line 33
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    .line 34
    .line 35
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    sget-object v5, Landroidx/appcompat/widget/ThemeUtils;->b:[I

    .line 50
    .line 51
    aput-object v5, v0, v1

    .line 52
    .line 53
    invoke-virtual {v2, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    aput v5, p2, v1

    .line 58
    .line 59
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->e:[I

    .line 60
    .line 61
    aput-object v1, v0, v4

    .line 62
    .line 63
    sget v1, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 64
    .line 65
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    aput p1, p2, v4

    .line 70
    .line 71
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->f:[I

    .line 72
    .line 73
    aput-object p1, v0, v3

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    aput p1, p2, v3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->b:[I

    .line 83
    .line 84
    aput-object v2, v0, v1

    .line 85
    .line 86
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    .line 87
    .line 88
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->b(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    aput v2, p2, v1

    .line 93
    .line 94
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->e:[I

    .line 95
    .line 96
    aput-object v1, v0, v4

    .line 97
    .line 98
    sget v1, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 99
    .line 100
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    aput v1, p2, v4

    .line 105
    .line 106
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->f:[I

    .line 107
    .line 108
    aput-object v1, v0, v3

    .line 109
    .line 110
    sget v1, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    .line 111
    .line 112
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    aput p1, p2, v3

    .line 117
    .line 118
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_3
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    .line 125
    .line 126
    if-ne p2, v0, :cond_4

    .line 127
    .line 128
    sget p2, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 129
    .line 130
    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_4
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    .line 140
    .line 141
    if-ne p2, v0, :cond_5

    .line 142
    .line 143
    invoke-static {p1, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :cond_5
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    .line 149
    .line 150
    if-ne p2, v0, :cond_6

    .line 151
    .line 152
    sget p2, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 153
    .line 154
    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :cond_6
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    .line 164
    .line 165
    if-eq p2, v0, :cond_c

    .line 166
    .line 167
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    .line 168
    .line 169
    if-ne p2, v0, :cond_7

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->b:[I

    .line 173
    .line 174
    invoke-static {p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a(I[I)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 181
    .line 182
    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    return-object p1

    .line 187
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->e:[I

    .line 188
    .line 189
    invoke-static {p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a(I[I)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    sget p2, Landroidx/appcompat/R$color;->abc_tint_default:I

    .line 196
    .line 197
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->f:[I

    .line 203
    .line 204
    invoke-static {p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a(I[I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    sget p2, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    .line 211
    .line 212
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1

    .line 217
    :cond_a
    sget v0, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    .line 218
    .line 219
    if-ne p2, v0, :cond_b

    .line 220
    .line 221
    sget p2, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    .line 222
    .line 223
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    return-object p1

    .line 228
    :cond_b
    const/4 p1, 0x0

    .line 229
    return-object p1

    .line 230
    :cond_c
    :goto_1
    sget p2, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    .line 231
    .line 232
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    return-object p1
.end method
