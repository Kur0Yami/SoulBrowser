.class Lcom/mycompany/app/lock/FingerActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/FingerActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$11;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/lock/FingerActivity;->w1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$11;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/lock/FingerActivity;->x0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/lock/FingerActivity;->s1:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/lock/FingerActivity;->y0()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
