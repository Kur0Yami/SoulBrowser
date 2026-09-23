.class Lcom/mycompany/app/dialog/DialogWebBookList$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$20;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookList$20;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p2, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p2, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lcom/mycompany/app/main/MainListView2;->K(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogWebBookList;->t()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
