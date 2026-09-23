.class Lcom/mycompany/app/lock/PatternActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PatternActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternActivity$5;->c:Lcom/mycompany/app/lock/PatternActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity$5;->c:Lcom/mycompany/app/lock/PatternActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/PatternActivity;->l1:Lcom/mycompany/app/lock/PatternLock;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p1, Lcom/mycompany/app/lock/PatternActivity;->t1:Z

    .line 10
    .line 11
    iput-boolean v1, p1, Lcom/mycompany/app/lock/PatternActivity;->u1:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p1, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/lock/PatternLock;->i()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/mycompany/app/lock/PatternActivity;->y0(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
