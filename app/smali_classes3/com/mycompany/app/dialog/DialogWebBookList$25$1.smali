.class Lcom/mycompany/app/dialog/DialogWebBookList$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogWebBookList$25;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList$25;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$25$1;->f:Lcom/mycompany/app/dialog/DialogWebBookList$25;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogWebBookList$25$1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$25$1;->f:Lcom/mycompany/app/dialog/DialogWebBookList$25;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList$25;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setClickable(Z)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$25$1;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 19
    .line 20
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v5, v1, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainListView2;->G(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 39
    .line 40
    sget v1, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 47
    .line 48
    sget v1, Lnet/kaki87/soul2/testing/R$string;->import_no_book:I

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
