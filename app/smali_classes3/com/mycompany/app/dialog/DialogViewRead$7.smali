.class Lcom/mycompany/app/dialog/DialogViewRead$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebReadTask$WebReadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$7;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$7;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->R()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$7;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->b0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p1, Lcom/mycompany/app/dialog/DialogViewRead;->Z0:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->R()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1, p3}, Lcom/mycompany/app/dialog/DialogViewRead;->y(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->Y0:Z

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->F(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$7;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogViewRead;->f0:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogViewRead;->m:Lcom/mycompany/app/view/MyAdFrame;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$7$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$7$2;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$7;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$7;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->V0:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_5

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U0:I

    .line 23
    .line 24
    if-ltz v2, :cond_2

    .line 25
    .line 26
    iget-object v3, v1, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lt v2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 50
    :goto_1
    if-nez v2, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    iput-object p1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    iput-wide v2, v1, Lcom/mycompany/app/data/DataNews;->c:J

    .line 60
    .line 61
    :cond_5
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 62
    .line 63
    if-nez p1, :cond_6

    .line 64
    .line 65
    :goto_3
    return-void

    .line 66
    :cond_6
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$7$1;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewRead$7$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$7;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method
