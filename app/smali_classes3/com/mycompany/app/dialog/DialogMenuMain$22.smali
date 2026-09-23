.class Lcom/mycompany/app/dialog/DialogMenuMain$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$22;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogMenuMain;->G0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$22;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x5

    .line 2
    rem-int/2addr p2, p1

    .line 3
    sget v0, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$22;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "mMenuType"

    .line 16
    .line 17
    invoke-static {v2, p1, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->k0:I

    .line 22
    .line 23
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->d()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return v1
.end method
