.class public Lcom/mycompany/app/dialog/DialogEditArea;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;
    }
.end annotation


# static fields
.field public static final synthetic E0:I


# instance fields
.field public A0:Ljava/util/ArrayList;

.field public B0:Z

.field public C0:Z

.field public D0:Ljava/lang/String;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyButtonImage;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyLineText;

.field public h0:Lcom/mycompany/app/view/MyRecyclerView;

.field public i0:Lcom/mycompany/app/main/MainAreaAdapter;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Lcom/mycompany/app/view/MyLineText;

.field public l0:Lcom/mycompany/app/dialog/DialogGuideArea;

.field public m0:Lcom/mycompany/app/dialog/DialogWebView;

.field public final n0:Z

.field public o0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public p0:Lcom/mycompany/app/dialog/DialogEditCmd;

.field public q0:Ljava/lang/String;

.field public r0:Ljava/lang/String;

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:Ljava/lang/String;

.field public v0:Ljava/lang/String;

.field public w0:Ljava/lang/String;

.field public x0:Ljava/util/List;

.field public y0:Ljava/util/ArrayList;

.field public z0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogEditArea;->c0:Lcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditArea;->q0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditArea;->r0:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogEditArea;->D0:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogEditArea;->n0:Z

    .line 21
    .line 22
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditArea$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogEditArea$1;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditArea$9;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditArea$9;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static C(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    check-cast v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 29
    .line 30
    new-instance v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iget v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 36
    .line 37
    iput v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 38
    .line 39
    iget v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 40
    .line 41
    iput v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 42
    .line 43
    iget v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 44
    .line 45
    iput v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 46
    .line 47
    iget v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->d:I

    .line 48
    .line 49
    iput v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->d:I

    .line 50
    .line 51
    iget v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->e:I

    .line 52
    .line 53
    iput v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->e:I

    .line 54
    .line 55
    iget v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 56
    .line 57
    iput v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 58
    .line 59
    iget-object v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v5, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v3, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 68
    .line 69
    iput-boolean v3, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-object v0

    .line 76
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method public static D(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "(function(){"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, "myClr();"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_1
    const-string p1, "if(document.head){var ele=document.createElement(\'style\');ele.innerText=\'"

    .line 24
    .line 25
    const-string v1, "{display:none !important;}\';document.head.appendChild(ele);}{var eles=document.querySelectorAll(\'"

    .line 26
    .line 27
    invoke-static {v0, p1, p0, v1, p0}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p0, "\');if(eles&&(eles.length!=0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var par=ele.parentNode;if(par){par.removeChild(ele);}else{ele.style.display=\'none\';}}}}})();"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x3d

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 20
    .line 21
    const-string v2, "^"

    .line 22
    .line 23
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-string v2, "$"

    .line 30
    .line 31
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const-string v2, "*"

    .line 38
    .line 39
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    :cond_3
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static F(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x5b

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v4, "tag"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, 0x1

    .line 25
    if-ne v3, v6, :cond_1

    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput v5, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 33
    .line 34
    iput p0, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 35
    .line 36
    iput-object v4, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v7, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    if-lez v3, :cond_2

    .line 47
    .line 48
    new-instance v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 49
    .line 50
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput v5, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 54
    .line 55
    iput p0, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 56
    .line 57
    iput-object v4, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iput-object v4, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 64
    .line 65
    iput-boolean v7, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 66
    .line 67
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    if-eq v3, v6, :cond_7

    .line 71
    .line 72
    add-int/lit8 v4, v3, 0x1

    .line 73
    .line 74
    const/16 v5, 0x5d

    .line 75
    .line 76
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-ne v4, v6, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-static {v3}, Lcom/mycompany/app/dialog/DialogEditArea;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_5

    .line 105
    .line 106
    move-object v8, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    new-instance v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 109
    .line 110
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iput v7, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 114
    .line 115
    iput p0, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 116
    .line 117
    iput-object v5, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v3, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 120
    .line 121
    iput-boolean v7, v8, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 122
    .line 123
    :goto_1
    if-eqz v8, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->o0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->o0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->l0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->o0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->l0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->l0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditArea;->G()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditCmd;->dismiss()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 84
    .line 85
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainAreaAdapter;->d()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iput v2, v0, Lcom/mycompany/app/main/MainAreaAdapter;->g:I

    .line 94
    .line 95
    iput-object v1, v0, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 96
    .line 97
    iput-object v1, v0, Lcom/mycompany/app/main/MainAreaAdapter;->e:Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 100
    .line 101
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 102
    .line 103
    if-eqz v0, :cond_a

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 109
    .line 110
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->c0:Lcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->q0:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->r0:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->s0:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->t0:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->v0:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->x0:Ljava/util/List;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->y0:Ljava/util/ArrayList;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->z0:Ljava/util/ArrayList;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditArea;->A0:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 141
    .line 142
    .line 143
    return-void
.end method
