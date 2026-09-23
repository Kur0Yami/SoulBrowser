.class Lcom/mycompany/app/web/WebVideoProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoProgress;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoProgress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress$1;->a:Lcom/mycompany/app/web/WebVideoProgress;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress$1;->a:Lcom/mycompany/app/web/WebVideoProgress;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoProgress;->A:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoProgress;->B:Lcom/mycompany/app/view/MyTextView;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget v2, v0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    iget-wide v2, v0, Lcom/mycompany/app/web/WebVideoProgress;->E:J

    .line 25
    .line 26
    long-to-float v4, v2

    .line 27
    int-to-float v5, p1

    .line 28
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 29
    .line 30
    div-float/2addr v5, v6

    .line 31
    mul-float/2addr v5, v4

    .line 32
    float-to-long v4, v5

    .line 33
    invoke-static {v2, v3, v4, v5}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, ""

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    iput p1, v0, Lcom/mycompany/app/web/WebVideoProgress;->K:I

    .line 62
    .line 63
    iget-object p1, v0, Lcom/mycompany/app/web/WebVideoProgress;->z:Lcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    :goto_2
    return-void

    .line 68
    :cond_5
    new-instance p1, Lcom/mycompany/app/web/WebVideoProgress$1$1;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebVideoProgress$1$1;-><init>(Lcom/mycompany/app/web/WebVideoProgress$1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress$1;->a:Lcom/mycompany/app/web/WebVideoProgress;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/web/WebVideoProgress;->J:I

    .line 4
    .line 5
    return-void
.end method
