.class Lcom/mycompany/app/web/WebNestView$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebNestView$24;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$24;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$24$1;->a:Lcom/mycompany/app/web/WebNestView$24;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$24$1;->a:Lcom/mycompany/app/web/WebNestView$24;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->t:Landroidx/core/view/NestedScrollingChildHelper;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->g2:Z

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->h2:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->i2:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/mycompany/app/web/WebNestView;->j2:Ljava/lang/String;

    .line 19
    .line 20
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebNestView;->k2:Z

    .line 21
    .line 22
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebNestView;->l2:Z

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->g2:Z

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    iput-object v8, v0, Lcom/mycompany/app/web/WebNestView;->h2:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v8, v0, Lcom/mycompany/app/web/WebNestView;->i2:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v8, v0, Lcom/mycompany/app/web/WebNestView;->j2:Ljava/lang/String;

    .line 33
    .line 34
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->k2:Z

    .line 35
    .line 36
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->l2:Z

    .line 37
    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->c2:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->m2:Z

    .line 48
    .line 49
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->n2:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->o2:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v4, v0, Lcom/mycompany/app/web/WebNestView;->p2:Ljava/lang/String;

    .line 54
    .line 55
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebNestView;->q2:Z

    .line 56
    .line 57
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebNestView;->r2:Z

    .line 58
    .line 59
    iput-object p1, v0, Lcom/mycompany/app/web/WebNestView;->s2:Ljava/lang/String;

    .line 60
    .line 61
    new-instance p1, Lcom/mycompany/app/web/WebNestView$24$1$1;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebNestView$24$1$1;-><init>(Lcom/mycompany/app/web/WebNestView$24$1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
