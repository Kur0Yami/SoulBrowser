.class Lcom/mycompany/app/main/MainActivity$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$42;->c:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/main/MainActivity;->b1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$42;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->g0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->F0:Landroid/view/View;

    .line 13
    .line 14
    iget v2, v0, Lcom/mycompany/app/main/MainActivity;->M0:I

    .line 15
    .line 16
    iget v3, v0, Lcom/mycompany/app/main/MainActivity;->K0:I

    .line 17
    .line 18
    iget v4, v0, Lcom/mycompany/app/main/MainActivity;->N0:I

    .line 19
    .line 20
    iget v5, v0, Lcom/mycompany/app/main/MainActivity;->L0:I

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->G0:Lcom/mycompany/app/main/MainActivity$MainInsetListener;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/mycompany/app/main/MainActivity$MainInsetListener;->b()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
