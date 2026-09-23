.class Lcom/mycompany/app/dialog/DialogListGdrive$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogListGdrive;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$6;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$6;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->y:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListGdrive;->o(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    new-instance p2, Lcom/mycompany/app/dialog/DialogListGdrive$6$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogListGdrive$6$1;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive$6;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v1, "dat"

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 54
    .line 55
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 56
    .line 57
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->y:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 62
    .line 63
    invoke-interface {p2, p1}, Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListGdrive;->dismiss()V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$6;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->Q:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->R:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListGdrive;->p()V

    .line 19
    .line 20
    .line 21
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->V:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    iput p1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->W:I

    .line 24
    .line 25
    new-instance p1, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 26
    .line 27
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/dialog/DialogListGdrive$14;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$14;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2, v1}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->R:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 38
    .line 39
    new-instance p2, Lcom/mycompany/app/dialog/DialogListGdrive$15;

    .line 40
    .line 41
    invoke-direct {p2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$15;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
