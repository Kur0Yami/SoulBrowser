.class public Lcom/mycompany/app/dialog/DialogBlockLink;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic w0:I


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyRoundImage;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyRecyclerView;

.field public l0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

.field public n0:Lcom/mycompany/app/dialog/DialogListBook;

.field public o0:Lcom/mycompany/app/view/MyPopupMenu;

.field public p0:I

.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:Z

.field public u0:Z

.field public v0:Lcom/mycompany/app/main/MainListLoader;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->d0:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->f0:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogBlockLink$1;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogBlockLink$1;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final B()Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 11
    .line 12
    sget v4, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 13
    .line 14
    sget-object v1, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 15
    .line 16
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 17
    .line 18
    aget v5, v1, v3

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 30
    .line 31
    sget v5, Lnet/kaki87/soul2/testing/R$string;->password_lock_1:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 43
    .line 44
    sget v6, Lnet/kaki87/soul2/testing/R$string;->link_block_site:I

    .line 45
    .line 46
    iget-boolean v9, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->q0:Z

    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v5, 0x2

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v7, Lnet/kaki87/soul2/testing/R$string;->link_block_page:I

    .line 61
    .line 62
    iget-boolean v10, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->r0:Z

    .line 63
    .line 64
    const/4 v11, 0x1

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v6, 0x3

    .line 67
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 74
    .line 75
    sget v8, Lnet/kaki87/soul2/testing/R$string;->blocked_link:I

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v7, 0x4

    .line 80
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public final C(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->f0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/data/book/DataBookLink;->n(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookLink;->o(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v2, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->p0:I

    .line 31
    .line 32
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->q0:Z

    .line 37
    .line 38
    if-ne v2, v0, :cond_1

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->r0:Z

    .line 41
    .line 42
    if-eq v2, v1, :cond_2

    .line 43
    .line 44
    :cond_1
    iput v3, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->p0:I

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->q0:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->r0:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBlockLink;->B()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->n0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x2

    .line 31
    if-le v2, v3, :cond_2

    .line 32
    .line 33
    const-string v2, "."

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x4

    .line 51
    if-le v1, v2, :cond_3

    .line 52
    .line 53
    const-string v1, "www."

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 66
    .line 67
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const v4, -0x70708

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final dismiss()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->n0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->n0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 27
    .line 28
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->s0:Z

    .line 33
    .line 34
    sget-boolean v5, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 35
    .line 36
    if-eq v3, v5, :cond_3

    .line 37
    .line 38
    move v6, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move v6, v0

    .line 41
    :goto_0
    iget-boolean v7, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->t0:Z

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->u0:Z

    .line 44
    .line 45
    xor-int/lit8 v8, v0, 0x1

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-interface/range {v4 .. v10}, Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;->a(ZZZZZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->v0:Lcom/mycompany/app/main/MainListLoader;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->v0:Lcom/mycompany/app/main/MainListLoader;

    .line 63
    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 72
    .line 73
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 81
    .line 82
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 99
    .line 100
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 108
    .line 109
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->d0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->f0:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockLink;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 122
    .line 123
    .line 124
    return-void
.end method
