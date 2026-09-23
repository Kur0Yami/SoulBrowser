.class public Lcom/mycompany/app/dialog/DialogSetPopup;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final o0:[I

.field public static final p0:[I

.field public static final q0:[I

.field public static final r0:[I

.field public static final s0:[I

.field public static final t0:[I

.field public static final u0:[I

.field public static final v0:[I

.field public static final w0:[I

.field public static final x0:[I

.field public static final y0:[I


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:I

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:Lcom/mycompany/app/fragment/FragmentDragView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyLineText;

.field public j0:Lcom/mycompany/app/main/MainDragAdapter;

.field public k0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public l0:I

.field public m0:Ljava/lang/String;

.field public n0:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/mycompany/app/dialog/DialogSetPopup;->o0:[I

    .line 9
    .line 10
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetPopup;->p0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$string;->group_other_tab:I

    sget v1, Lnet/kaki87/soul2/testing/R$string;->delete_other_tab:I

    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete_all_tab:I

    sget v3, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    sget v4, Lnet/kaki87/soul2/testing/R$string;->group_url:I

    sget v5, Lnet/kaki87/soul2/testing/R$string;->back_url:I

    sget v6, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    sget v7, Lnet/kaki87/soul2/testing/R$string;->share_url:I

    sget v8, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    sget v9, Lnet/kaki87/soul2/testing/R$string;->delete_tab:I

    sget v10, Lnet/kaki87/soul2/testing/R$string;->tab_homepage:I

    sget v11, Lnet/kaki87/soul2/testing/R$string;->new_url_current:I

    sget v12, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    filled-new-array/range {v0 .. v12}, [I

    move-result-object v13

    sput-object v13, Lcom/mycompany/app/dialog/DialogSetPopup;->q0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_library_add_black_24:I

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_24:I

    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_black_24:I

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_library_add_black_24:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_flip_to_back_black_24:I

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_black_24:I

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_black_24:I

    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_black_24:I

    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_energy_savings_leaf_black_24:I

    filled-new-array/range {v0 .. v12}, [I

    move-result-object v13

    sput-object v13, Lcom/mycompany/app/dialog/DialogSetPopup;->r0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_library_add_dark_24:I

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_24:I

    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_dark_24:I

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_library_add_dark_24:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_flip_to_back_dark_24:I

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_dark_24:I

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_dark_24:I

    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_24:I

    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_dark_24:I

    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_energy_savings_leaf_dark_24:I

    filled-new-array/range {v0 .. v12}, [I

    move-result-object v13

    sput-object v13, Lcom/mycompany/app/dialog/DialogSetPopup;->s0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    sget v1, Lnet/kaki87/soul2/testing/R$string;->share_url:I

    sget v2, Lnet/kaki87/soul2/testing/R$string;->paste_url:I

    sget v3, Lnet/kaki87/soul2/testing/R$string;->open_copied_url:I

    sget v4, Lnet/kaki87/soul2/testing/R$string;->open_new_tab:I

    sget v5, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    sget v6, Lnet/kaki87/soul2/testing/R$string;->delete_cookie:I

    sget v7, Lnet/kaki87/soul2/testing/R$string;->view_certi:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v11

    sput-object v11, Lcom/mycompany/app/dialog/DialogSetPopup;->t0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_black_24:I

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_paste_black_24:I

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_black_24:I

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_black_24:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_black_24:I

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_black_24:I

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_security_black_24:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v11

    sput-object v11, Lcom/mycompany/app/dialog/DialogSetPopup;->u0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_dark_24:I

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_paste_dark_24:I

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_dark_24:I

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_dark_24:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_dark_24:I

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_dark_24:I

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_security_dark_24:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v11

    sput-object v11, Lcom/mycompany/app/dialog/DialogSetPopup;->v0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$string;->copy_text:I

    sget v1, Lnet/kaki87/soul2/testing/R$string;->share:I

    sget v2, Lnet/kaki87/soul2/testing/R$string;->select_all:I

    sget v3, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    sget v4, Lnet/kaki87/soul2/testing/R$string;->google_trans:I

    sget v5, Lnet/kaki87/soul2/testing/R$string;->search_in_preview:I

    sget v6, Lnet/kaki87/soul2/testing/R$string;->find_word:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v11

    sput-object v11, Lcom/mycompany/app/dialog/DialogSetPopup;->w0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_black_24:I

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_selection_black_24:I

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_black_24:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_black_24:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v11

    sput-object v11, Lcom/mycompany/app/dialog/DialogSetPopup;->x0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_dark_24:I

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_selection_dark_24:I

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_dark_24:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_dark_24:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v11

    sput-object v11, Lcom/mycompany/app/dialog/DialogSetPopup;->y0:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
    .end array-data

    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 4
        0x0
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
    .end array-data
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetPopup;IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->d0:I

    .line 2
    .line 3
    if-nez v0, :cond_check2

    sget-object v0, Lcom/mycompany/app/dialog/DialogSetPopup;->o0:[I

    aget v1, v0, p1

    goto :goto_mask

    :cond_check2
    const/4 v1, 0x2

    if-lt v0, v1, :cond_p0

    const/4 v1, 0x1

    shl-int v1, v1, p1

    goto :goto_mask

    :cond_p0
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetPopup;->p0:[I

    aget v1, v0, p1

    :goto_mask
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 12
    .line 13
    or-int/2addr v1, p2

    .line 14
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 20
    .line 21
    not-int v1, v1

    .line 22
    and-int/2addr v1, p2

    .line 23
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetPopup;->F()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final C(Z)Ljava/util/ArrayList;
    .locals 10

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->d0:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->g3(IZ)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/16 v4, 0xc

    .line 15
    .line 16
    if-nez v0, :cond_check_tab

    const/16 v4, 0xd

    .line 17
    .line 18
    move v0, v3

    .line 19
    :goto_0
    if-ge v0, v4, :cond_7

    .line 20
    .line 21
    aget v5, p1, v0

    .line 22
    .line 23
    iget v6, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 24
    .line 25
    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->o0:[I

    .line 26
    .line 27
    aget v7, v7, v5

    .line 28
    .line 29
    and-int/2addr v6, v7

    .line 30
    if-ne v6, v7, :cond_0

    .line 31
    .line 32
    move v6, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v6, v3

    .line 35
    :goto_1
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 36
    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    const/4 v7, 0x6

    .line 40
    if-ne v5, v7, :cond_2

    .line 41
    .line 42
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 43
    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_dark_24:I

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_black_24:I

    .line 50
    .line 51
    :goto_2
    new-instance v8, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 52
    .line 53
    sget v9, Lnet/kaki87/soul2/testing/R$string;->normal_tab:I

    .line 54
    .line 55
    invoke-direct {v8, v5, v7, v9, v6}, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;-><init>(IIIZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_2
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    sget-object v7, Lcom/mycompany/app/main/MainConst;->j:[I

    .line 67
    .line 68
    aget v7, v7, v5

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    sget-object v7, Lcom/mycompany/app/main/MainConst;->i:[I

    .line 72
    .line 73
    aget v7, v7, v5

    .line 74
    .line 75
    :goto_3
    new-instance v8, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 76
    .line 77
    sget-object v9, Lcom/mycompany/app/main/MainConst;->h:[I

    .line 78
    .line 79
    aget v9, v9, v5

    .line 80
    .line 81
    invoke-direct {v8, v5, v7, v9, v6}, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;-><init>(IIIZ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_check_tab
    const/4 v5, 0x2

    if-ne v0, v5, :cond_check_url

    const/16 v4, 0xd

    move v0, v3

    :goto_tab
    if-ge v0, v4, :cond_7

    aget v5, p1, v0

    iget v6, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    const/4 v7, 0x1

    shl-int v7, v7, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_tab_off

    move v6, v2

    goto :goto_tab_state

    :cond_tab_off
    move v6, v3

    :goto_tab_state
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v7, :cond_tab_light

    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->s0:[I

    goto :goto_tab_icon

    :cond_tab_light
    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->r0:[I

    :goto_tab_icon
    aget v7, v7, v5

    sget-object v8, Lcom/mycompany/app/dialog/DialogSetPopup;->q0:[I

    aget v8, v8, v5

    new-instance v9, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    invoke-direct {v9, v5, v7, v8, v6}, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;-><init>(IIIZ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_tab

    :cond_check_url
    const/4 v5, 0x3

    if-ne v0, v5, :cond_check_text

    const/16 v4, 0x8

    move v0, v3

    :goto_url
    if-ge v0, v4, :cond_7

    aget v5, p1, v0

    iget v6, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    const/4 v7, 0x1

    shl-int v7, v7, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_url_off

    move v6, v2

    goto :goto_url_state

    :cond_url_off
    move v6, v3

    :goto_url_state
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v7, :cond_url_light

    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->v0:[I

    goto :goto_url_icon

    :cond_url_light
    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->u0:[I

    :goto_url_icon
    aget v7, v7, v5

    sget-object v8, Lcom/mycompany/app/dialog/DialogSetPopup;->t0:[I

    aget v8, v8, v5

    new-instance v9, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    invoke-direct {v9, v5, v7, v8, v6}, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;-><init>(IIIZ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_url

    :cond_check_text
    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    const/4 v4, 0x7

    move v0, v3

    :goto_text
    if-ge v0, v4, :cond_7

    aget v5, p1, v0

    iget v6, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    const/4 v7, 0x1

    shl-int v7, v7, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_text_off

    move v6, v2

    goto :goto_text_state

    :cond_text_off
    move v6, v3

    :goto_text_state
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v7, :cond_text_light

    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->y0:[I

    goto :goto_text_icon

    :cond_text_light
    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->x0:[I

    :goto_text_icon
    aget v7, v7, v5

    sget-object v8, Lcom/mycompany/app/dialog/DialogSetPopup;->w0:[I

    aget v8, v8, v5

    new-instance v9, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    invoke-direct {v9, v5, v7, v8, v6}, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;-><init>(IIIZ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_text

    :cond_4
    move v0, v3

    .line 91
    :goto_5
    if-ge v0, v4, :cond_7

    .line 92
    .line 93
    aget v5, p1, v0

    .line 94
    .line 95
    iget v6, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 96
    .line 97
    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->p0:[I

    .line 98
    .line 99
    aget v7, v7, v5

    .line 100
    .line 101
    and-int/2addr v6, v7

    .line 102
    if-ne v6, v7, :cond_5

    .line 103
    .line 104
    move v6, v2

    .line 105
    goto :goto_6

    .line 106
    :cond_5
    move v6, v3

    .line 107
    :goto_6
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 108
    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    sget-object v7, Lcom/mycompany/app/main/MainConst;->n:[I

    .line 112
    .line 113
    aget v7, v7, v5

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_6
    sget-object v7, Lcom/mycompany/app/main/MainConst;->m:[I

    .line 117
    .line 118
    aget v7, v7, v5

    .line 119
    .line 120
    :goto_7
    new-instance v8, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 121
    .line 122
    sget-object v9, Lcom/mycompany/app/main/MainConst;->l:[I

    .line 123
    .line 124
    aget v9, v9, v5

    .line 125
    .line 126
    invoke-direct {v8, v5, v7, v9, v6}, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;-><init>(IIIZ)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    return-object v1
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->k0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->k0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->d0:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    if-nez v0, :cond_check_tab_e

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/pref/PrefZone;->e0:I

    .line 9
    .line 10
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/mycompany/app/pref/PrefZone;->g0:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_7

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 25
    .line 26
    sput v0, Lcom/mycompany/app/pref/PrefZone;->e0:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 29
    .line 30
    sput-object v0, Lcom/mycompany/app/pref/PrefZone;->g0:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sput-object v2, Lcom/mycompany/app/pref/PrefZone;->g0:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "mLinkOrder7"

    .line 43
    .line 44
    const-string v2, "mUseLink8"

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    sget v3, Lcom/mycompany/app/pref/PrefZone;->e0:I

    .line 49
    .line 50
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lcom/mycompany/app/pref/PrefZone;->g0:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 73
    .line 74
    .line 77
    goto :goto_2

    .line 78
    :cond_check_tab_e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_check_url_e

    sget v0, Lcom/mycompany/app/pref/PrefWeb;->a0:I

    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    if-ne v0, v3, :cond_tab_changed

    sget-object v0, Lcom/mycompany/app/pref/PrefWeb;->e0:Ljava/lang/String;

    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_tab_changed
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    sput v0, Lcom/mycompany/app/pref/PrefWeb;->a0:I

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    sput-object v0, Lcom/mycompany/app/pref/PrefWeb;->e0:Ljava/lang/String;

    if-nez v0, :cond_tab_notnull

    sput-object v2, Lcom/mycompany/app/pref/PrefWeb;->e0:Ljava/lang/String;

    :cond_tab_notnull
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    move-result-object v0

    const-string v1, "mTabBarOrder"

    const-string v2, "mTabBarMenu"

    if-eqz p1, :cond_tab_noapply

    sget v3, Lcom/mycompany/app/pref/PrefWeb;->a0:I

    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    sget-object v2, Lcom/mycompany/app/pref/PrefWeb;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_tab_e

    :cond_tab_noapply
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    :goto_tab_e
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    goto :goto_2

    :cond_check_url_e
    const/4 v3, 0x3

    if-ne v0, v3, :cond_check_text_e

    sget v0, Lcom/mycompany/app/pref/PrefWeb;->f0:I

    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    if-ne v0, v3, :cond_url_changed

    sget-object v0, Lcom/mycompany/app/pref/PrefWeb;->g0:Ljava/lang/String;

    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_url_changed
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    sput v0, Lcom/mycompany/app/pref/PrefWeb;->f0:I

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    sput-object v0, Lcom/mycompany/app/pref/PrefWeb;->g0:Ljava/lang/String;

    if-nez v0, :cond_url_notnull

    sput-object v2, Lcom/mycompany/app/pref/PrefWeb;->g0:Ljava/lang/String;

    :cond_url_notnull
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    move-result-object v0

    const-string v1, "mUrlBarOrder"

    const-string v2, "mUrlBarMenu"

    if-eqz p1, :cond_url_noapply

    sget v3, Lcom/mycompany/app/pref/PrefWeb;->f0:I

    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    sget-object v2, Lcom/mycompany/app/pref/PrefWeb;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_url_e

    :cond_url_noapply
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    :goto_url_e
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    goto :goto_2

    :cond_check_text_e
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    sget v0, Lcom/mycompany/app/pref/PrefWeb;->h0:I

    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    if-ne v0, v3, :cond_text_changed

    sget-object v0, Lcom/mycompany/app/pref/PrefWeb;->i0:Ljava/lang/String;

    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_text_changed
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    sput v0, Lcom/mycompany/app/pref/PrefWeb;->h0:I

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    sput-object v0, Lcom/mycompany/app/pref/PrefWeb;->i0:Ljava/lang/String;

    if-nez v0, :cond_text_notnull

    sput-object v2, Lcom/mycompany/app/pref/PrefWeb;->i0:Ljava/lang/String;

    :cond_text_notnull
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    move-result-object v0

    const-string v1, "mTextSelectOrder"

    const-string v2, "mTextSelectMenu"

    if-eqz p1, :cond_text_noapply

    sget v3, Lcom/mycompany/app/pref/PrefWeb;->h0:I

    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    sget-object v2, Lcom/mycompany/app/pref/PrefWeb;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_text_e

    :cond_text_noapply
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    :goto_text_e
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    goto :goto_2

    :cond_3
    sget v0, Lcom/mycompany/app/pref/PrefZone;->f0:I

    .line 79
    .line 80
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 81
    .line 82
    if-ne v0, v3, :cond_4

    .line 83
    .line 84
    sget-object v0, Lcom/mycompany/app/pref/PrefZone;->h0:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_7

    .line 93
    .line 94
    :cond_4
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 95
    .line 96
    sput v0, Lcom/mycompany/app/pref/PrefZone;->f0:I

    .line 97
    .line 98
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 99
    .line 100
    sput-object v0, Lcom/mycompany/app/pref/PrefZone;->h0:Ljava/lang/String;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    sput-object v2, Lcom/mycompany/app/pref/PrefZone;->h0:Ljava/lang/String;

    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "mImgOrder4"

    .line 113
    .line 114
    const-string v2, "mUseImg5"

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    sget v3, Lcom/mycompany/app/pref/PrefZone;->f0:I

    .line 119
    .line 120
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/mycompany/app/pref/PrefZone;->h0:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 143
    .line 144
    .line 147
    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetPopup;->dismiss()V

    .line 150
    .line 151
    .line 152
    :cond_8
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const v1, -0x7f7f80

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const v1, -0x252526

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const v1, -0x50506

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const v1, -0xe19938

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez v0, :cond_post

    return-void

    :cond_post
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetPopup$1;

    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSetPopup$1;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetPopup;->D()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    iget-boolean v3, v1, Lcom/mycompany/app/drag/DragListView;->c:Z

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iput-boolean v0, v1, Lcom/mycompany/app/drag/DragListView;->c:Z

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->stopNestedScroll()V

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lcom/mycompany/app/drag/DragListView;->W:Landroid/view/MotionEvent;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 41
    .line 42
    .line 43
    iput-object v2, v1, Lcom/mycompany/app/drag/DragListView;->W:Landroid/view/MotionEvent;

    .line 44
    .line 45
    :cond_3
    :goto_0
    iput-object v2, v1, Lcom/mycompany/app/fragment/FragmentDragView;->n0:Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainDragAdapter;->getCount()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, v0, Lcom/mycompany/app/main/MainDragAdapter;->i:I

    .line 67
    .line 68
    iput-object v2, v0, Lcom/mycompany/app/main/MainDragAdapter;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 69
    .line 70
    iput-object v2, v0, Lcom/mycompany/app/main/MainDragAdapter;->f:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 71
    .line 72
    iput-object v2, v0, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 73
    .line 74
    iput-object v2, v0, Lcom/mycompany/app/main/MainDragAdapter;->h:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

    .line 75
    .line 76
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 77
    .line 78
    :cond_6
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 83
    .line 84
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->n0:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 91
    .line 92
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 93
    .line 94
    .line 95
    return-void
.end method
