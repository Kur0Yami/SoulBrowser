.class Lcom/mycompany/app/dialog/DialogSetPopup$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPopup$9;->a:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetPopup;->o0:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup$9;->a:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPopup;->D()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v2, ""

    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->d0:I

    const/4 v1, 0x2

    if-ne v3, v1, :cond_not_tab

    const/16 v3, 0x1fff

    goto :goto_pick_default

    :cond_not_tab
    const/4 v1, 0x3

    if-ne v3, v1, :cond_not_url

    const/16 v3, 0xff

    goto :goto_pick_default

    :cond_not_url
    const/4 v1, 0x4

    if-ne v3, v1, :cond_link_img

    const/16 v3, 0x7f

    goto :goto_pick_default

    :cond_link_img
    const/4 v1, 0x0

    if-ne v3, v1, :cond_img_default

    const/16 v3, 0x3ffe

    goto :goto_pick_default

    :cond_img_default
    const/16 v3, 0x1ffe

    :goto_pick_default
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    if-ne v1, v3, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    :cond_1
    iput v3, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 30
    .line 31
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetPopup;->C(Z)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 39
    .line 40
    iput-object v1, v2, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPopup;->F()V

    .line 46
    .line 47
    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetPopup;->E(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
