.class Lcom/mycompany/app/dialog/DialogTabFind$3;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabFind;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabFind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabFind$3;->a:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabFind$3;->a:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabFind;->c:Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;->b(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind$3;->a:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind;->c:Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind$3;->a:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind;->c:Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
