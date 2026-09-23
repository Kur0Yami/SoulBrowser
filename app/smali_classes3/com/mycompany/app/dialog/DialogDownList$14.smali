.class Lcom/mycompany/app/dialog/DialogDownList$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$14;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$14;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->f0:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->f0:Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v3, -0x70708

    .line 29
    .line 30
    .line 31
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v3, v3, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->O0:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownList$18;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownList$18;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->M0:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownList$15;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownList$15;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method
