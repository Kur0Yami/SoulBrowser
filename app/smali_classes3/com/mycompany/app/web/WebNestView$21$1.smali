.class Lcom/mycompany/app/web/WebNestView$21$1;
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
.field public final synthetic a:Lcom/mycompany/app/web/WebNestView$21;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$21$1;->a:Lcom/mycompany/app/web/WebNestView$21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$21$1;->a:Lcom/mycompany/app/web/WebNestView$21;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$21;->c:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->R1:Z

    .line 9
    .line 10
    iget v2, v0, Lcom/mycompany/app/web/WebNestView;->S1:I

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->T1:Lcom/mycompany/app/web/WebNestView$WebStyleListener;

    .line 13
    .line 14
    const-string v4, "0"

    .line 15
    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->j(ZILcom/mycompany/app/web/WebNestView$WebStyleListener;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->U1:Ljava/lang/String;

    .line 28
    .line 29
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->V1:I

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    if-eq v1, v4, :cond_2

    .line 33
    .line 34
    const-string v1, "4"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebNestView;->setPageState(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "2"

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x2

    .line 55
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebNestView;->setPageState(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebNestView;->c:Z

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    if-eqz v3, :cond_4

    .line 64
    .line 65
    invoke-interface {v3}, Lcom/mycompany/app/web/WebNestView$WebStyleListener;->a()V

    .line 66
    .line 67
    .line 68
    :cond_4
    iput v2, v0, Lcom/mycompany/app/web/WebNestView;->W1:I

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, v0, Lcom/mycompany/app/web/WebNestView;->X1:Ljava/lang/String;

    .line 75
    .line 76
    new-instance p1, Lcom/mycompany/app/web/WebNestView$21$1$1;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebNestView$21$1$1;-><init>(Lcom/mycompany/app/web/WebNestView$21$1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
