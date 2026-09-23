.class Lcom/mycompany/app/dialog/DialogUpdateFilter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUpdateFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$8;->c:Lcom/mycompany/app/dialog/DialogUpdateFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$8;->c:Lcom/mycompany/app/dialog/DialogUpdateFilter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v4, v2, v4

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    iget-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 23
    .line 24
    cmp-long v4, v4, v2

    .line 25
    .line 26
    if-gez v4, :cond_3

    .line 27
    .line 28
    iput-wide v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 29
    .line 30
    :cond_3
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-wide v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 35
    .line 36
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->i3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 50
    .line 51
    long-to-float v2, v2

    .line 52
    const/high16 v3, 0x42c80000    # 100.0f

    .line 53
    .line 54
    mul-float/2addr v2, v3

    .line 55
    iget-wide v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 56
    .line 57
    long-to-float v0, v3

    .line 58
    div-float/2addr v2, v0

    .line 59
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
