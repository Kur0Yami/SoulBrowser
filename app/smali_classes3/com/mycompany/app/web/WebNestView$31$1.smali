.class Lcom/mycompany/app/web/WebNestView$31$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView$31;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$31$1;->c:Lcom/mycompany/app/web/WebNestView$31;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$31$1;->c:Lcom/mycompany/app/web/WebNestView$31;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView$31;->c:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestView;->C2:Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/web/WebNestView;->C2:Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 9
    .line 10
    iget-object v4, v1, Lcom/mycompany/app/web/WebNestView;->B0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/web/WebNestView;->A(Ljava/lang/String;Lcom/mycompany/app/db/book/DbTabState$StateItem;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$31;->c:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 19
    .line 20
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->B0:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method
