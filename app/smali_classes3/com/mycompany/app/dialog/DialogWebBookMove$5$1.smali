.class Lcom/mycompany/app/dialog/DialogWebBookMove$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookMove$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookMove$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$5$1;->c:Lcom/mycompany/app/dialog/DialogWebBookMove$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$5$1;->c:Lcom/mycompany/app/dialog/DialogWebBookMove$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$5;->c:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 19
    .line 20
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->c0:Ljava/lang/String;

    .line 21
    .line 22
    iget v5, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->e0:I

    .line 23
    .line 24
    invoke-virtual {v0, v5, v4, v1, v3}, Lcom/mycompany/app/dialog/DialogWebBookMove;->D(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->q0:Z

    .line 28
    .line 29
    return-void
.end method
