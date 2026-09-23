.class Lcom/mycompany/app/main/MainTransText$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/main/MainTransText$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText$9;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$9$2;->f:Lcom/mycompany/app/main/MainTransText$9;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainTransText$9$2;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$9$2;->f:Lcom/mycompany/app/main/MainTransText$9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText$9;->c:Lcom/mycompany/app/main/MainTransText;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/main/MainTransText;->c:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainTransText$9$2;->c:Z

    .line 10
    .line 11
    invoke-interface {v1, v2}, Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;->a(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText$9;->c:Lcom/mycompany/app/main/MainTransText;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainTransText;->p:Z

    .line 18
    .line 19
    return-void
.end method
