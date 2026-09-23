.class Lcom/mycompany/app/dialog/DialogWebBookList$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$11;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogWebBookList;->V:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$11;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$11;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogWebBookList;->r(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebBookList;->r(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->q(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method
