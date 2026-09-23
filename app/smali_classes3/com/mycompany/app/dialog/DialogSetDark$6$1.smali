.class Lcom/mycompany/app/dialog/DialogSetDark$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDark$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$6$1;->c:Lcom/mycompany/app/dialog/DialogSetDark$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$6$1;->c:Lcom/mycompany/app/dialog/DialogSetDark$6;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark$6;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    iput v3, v1, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 10
    .line 11
    iput v3, v1, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/mycompany/app/dialog/DialogSetDark;->F(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetDark$6;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->x0:Z

    .line 19
    .line 20
    return-void
.end method
