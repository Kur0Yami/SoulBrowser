.class public Lcom/mycompany/app/main/MainNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Ljava/util/ArrayList;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/util/ArrayList;

.field public static E:Ljava/util/ArrayList;

.field public static F:Ljava/util/ArrayList;

.field public static G:Ljava/util/ArrayList;

.field public static H:Ljava/util/ArrayList;

.field public static I:Ljava/util/ArrayList;

.field public static J:Ljava/util/ArrayList;

.field public static K:Ljava/util/ArrayList;

.field public static L:Ljava/util/ArrayList;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/ArrayList;

.field public static c:Ljava/util/ArrayList;

.field public static d:Ljava/util/ArrayList;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/util/ArrayList;

.field public static p:Ljava/util/ArrayList;

.field public static q:Ljava/util/ArrayList;

.field public static r:Ljava/util/ArrayList;

.field public static s:Ljava/util/ArrayList;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/util/ArrayList;

.field public static x:Ljava/util/ArrayList;

.field public static y:Ljava/util/ArrayList;

.field public static z:Ljava/util/ArrayList;


# direct methods
.method public static a(ILjava/util/List;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eq v1, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_3
    :goto_0
    return v0
.end method

.method public static b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/mycompany/app/main/MainNative;->a:Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lcom/mycompany/app/main/MainNative;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    sput-object v0, Lcom/mycompany/app/main/MainNative;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    sput-object v0, Lcom/mycompany/app/main/MainNative;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    sput-object v0, Lcom/mycompany/app/main/MainNative;->e:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/mycompany/app/main/MainNative;->f:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lcom/mycompany/app/main/MainNative;->g:Ljava/lang/String;

    .line 15
    .line 16
    sput-object v0, Lcom/mycompany/app/main/MainNative;->h:Ljava/lang/String;

    .line 17
    .line 18
    sput-object v0, Lcom/mycompany/app/main/MainNative;->i:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v0, Lcom/mycompany/app/main/MainNative;->j:Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/mycompany/app/main/MainNative;->k:Ljava/lang/String;

    .line 23
    .line 24
    sput-object v0, Lcom/mycompany/app/main/MainNative;->l:Ljava/lang/String;

    .line 25
    .line 26
    sput-object v0, Lcom/mycompany/app/main/MainNative;->m:Ljava/lang/String;

    .line 27
    .line 28
    sput-object v0, Lcom/mycompany/app/main/MainNative;->n:Ljava/lang/String;

    .line 29
    .line 30
    sput-object v0, Lcom/mycompany/app/main/MainNative;->o:Ljava/util/ArrayList;

    .line 31
    .line 32
    sput-object v0, Lcom/mycompany/app/main/MainNative;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    sput-object v0, Lcom/mycompany/app/main/MainNative;->q:Ljava/util/ArrayList;

    .line 35
    .line 36
    sput-object v0, Lcom/mycompany/app/main/MainNative;->r:Ljava/util/ArrayList;

    .line 37
    .line 38
    sput-object v0, Lcom/mycompany/app/main/MainNative;->s:Ljava/util/ArrayList;

    .line 39
    .line 40
    sput-object v0, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 41
    .line 42
    sput-object v0, Lcom/mycompany/app/main/MainNative;->u:Ljava/lang/String;

    .line 43
    .line 44
    sput-object v0, Lcom/mycompany/app/main/MainNative;->v:Ljava/lang/String;

    .line 45
    .line 46
    sput-object v0, Lcom/mycompany/app/main/MainNative;->w:Ljava/util/ArrayList;

    .line 47
    .line 48
    sput-object v0, Lcom/mycompany/app/main/MainNative;->x:Ljava/util/ArrayList;

    .line 49
    .line 50
    sput-object v0, Lcom/mycompany/app/main/MainNative;->y:Ljava/util/ArrayList;

    .line 51
    .line 52
    sput-object v0, Lcom/mycompany/app/main/MainNative;->z:Ljava/util/ArrayList;

    .line 53
    .line 54
    sput-object v0, Lcom/mycompany/app/main/MainNative;->A:Ljava/util/ArrayList;

    .line 55
    .line 56
    sput-object v0, Lcom/mycompany/app/main/MainNative;->B:Ljava/lang/String;

    .line 57
    .line 58
    sput-object v0, Lcom/mycompany/app/main/MainNative;->C:Ljava/lang/String;

    .line 59
    .line 60
    sput-object v0, Lcom/mycompany/app/main/MainNative;->D:Ljava/util/ArrayList;

    .line 61
    .line 62
    sput-object v0, Lcom/mycompany/app/main/MainNative;->E:Ljava/util/ArrayList;

    .line 63
    .line 64
    sput-object v0, Lcom/mycompany/app/main/MainNative;->F:Ljava/util/ArrayList;

    .line 65
    .line 66
    sput-object v0, Lcom/mycompany/app/main/MainNative;->G:Ljava/util/ArrayList;

    .line 67
    .line 68
    sput-object v0, Lcom/mycompany/app/main/MainNative;->H:Ljava/util/ArrayList;

    .line 69
    .line 70
    sput-object v0, Lcom/mycompany/app/main/MainNative;->I:Ljava/util/ArrayList;

    .line 71
    .line 72
    sput-object v0, Lcom/mycompany/app/main/MainNative;->J:Ljava/util/ArrayList;

    .line 73
    .line 74
    sput-object v0, Lcom/mycompany/app/main/MainNative;->K:Ljava/util/ArrayList;

    .line 75
    .line 76
    sput-object v0, Lcom/mycompany/app/main/MainNative;->L:Ljava/util/ArrayList;

    .line 77
    .line 78
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/MainNative;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->getTransContain()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/mycompany/app/main/MainNative;->e:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/mycompany/app/main/MainNative;->e:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/MainNative;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->getTransElement()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/mycompany/app/main/MainNative;->f:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/mycompany/app/main/MainNative;->f:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method
