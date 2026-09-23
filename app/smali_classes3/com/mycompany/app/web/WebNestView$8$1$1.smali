.class Lcom/mycompany/app/web/WebNestView$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView$8$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$8$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$8$1$1;->c:Lcom/mycompany/app/web/WebNestView$8$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$8$1$1;->c:Lcom/mycompany/app/web/WebNestView$8$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$8$1;->c:Lcom/mycompany/app/web/WebNestView$8;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$8;->c:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->H()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->p()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
