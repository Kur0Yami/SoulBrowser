.class Lcom/mycompany/app/dialog/DialogDownPage$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownPage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownPage$11;->a:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogDownPage;->B0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownPage$11;->a:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->z0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->z0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownPage$11;->a:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownPage;->x0:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownPage;->x0:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogDownPage;->E(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownPage;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    return v1
.end method
