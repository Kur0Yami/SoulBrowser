.class Lcom/mycompany/app/quick/QuickView$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Lcom/mycompany/app/quick/QuickView$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView$15;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$15$1;->f:Lcom/mycompany/app/quick/QuickView$15;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickView$15$1;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$15$1;->f:Lcom/mycompany/app/quick/QuickView$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView$15;->c:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView$15$1;->c:Ljava/util/List;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/quick/QuickAdapter;->Y(Ljava/util/List;Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean v3, v0, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/mycompany/app/quick/QuickView;->c(Lcom/mycompany/app/quick/QuickView;Z)V

    .line 25
    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 32
    .line 33
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickView;->u(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickView;->a(Lcom/mycompany/app/quick/QuickView;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->f0:Z

    .line 44
    .line 45
    return-void
.end method
