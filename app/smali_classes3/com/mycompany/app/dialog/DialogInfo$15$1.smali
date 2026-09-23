.class Lcom/mycompany/app/dialog/DialogInfo$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:J

.field public final synthetic i:Lcom/mycompany/app/dialog/DialogInfo$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo$15;IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->i:Lcom/mycompany/app/dialog/DialogInfo$15;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->f:I

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->g:I

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->h:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->i:Lcom/mycompany/app/dialog/DialogInfo$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo$15;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/16 v2, 0x8

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->c:I

    .line 16
    .line 17
    if-lez v1, :cond_2

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->f:I

    .line 20
    .line 21
    if-lez v2, :cond_2

    .line 22
    .line 23
    iget v3, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->g:I

    .line 24
    .line 25
    rem-int/lit16 v3, v3, 0xb4

    .line 26
    .line 27
    const-string v4, " x "

    .line 28
    .line 29
    const-string v5, ""

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    const/4 v2, 0x3

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    const-wide/16 v1, 0x0

    .line 87
    .line 88
    iget-wide v3, p0, Lcom/mycompany/app/dialog/DialogInfo$15$1;->h:J

    .line 89
    .line 90
    cmp-long v1, v3, v1

    .line 91
    .line 92
    if-lez v1, :cond_3

    .line 93
    .line 94
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->r2(J)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    return-void
.end method
