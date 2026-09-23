.class Lcom/mycompany/app/lock/PassActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PassActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PassActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PassActivity$11;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity$11;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/lock/PassActivity;->v0(Lcom/mycompany/app/lock/PassActivity;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Lcom/mycompany/app/lock/PassActivity$11$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/lock/PassActivity$11$1;-><init>(Lcom/mycompany/app/lock/PassActivity$11;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
