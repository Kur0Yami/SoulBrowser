.class public final synthetic Lkotlin/io/path/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/io/path/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/FileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/lang/Object;)Ljava/util/concurrent/CompletionException;
    .locals 0

    .line 1
    check-cast p0, Ljava/util/concurrent/CompletionException;

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ljava/util/concurrent/CompletionException;

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/io/path/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Ljava/lang/reflect/Type;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, Ljava/lang/reflect/Type;

    .line 11
    .line 12
    invoke-static {p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->a:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 28
    .line 29
    invoke-static {p2}, Landroid/support/v4/media/a;->A(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->a:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :goto_1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    check-cast p2, Ljava/lang/reflect/Type;

    .line 51
    .line 52
    invoke-static {p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
